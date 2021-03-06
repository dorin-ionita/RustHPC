use crate::Point;
use crate::Scenario;
use std::fs::File;
use std::path::Path;
use std::io::Write;
use std::error::Error;
use std::time::{SystemTime, UNIX_EPOCH, Duration, Instant};
use threadpool::ThreadPool;
use std::cmp;

use std::thread;
use std::sync::mpsc;
// mod vtk;
// mod vtk;
// use vtk::export_to_vdk
//;

use std::f64::consts::PI;

fn export_to_vtk(s : &Scenario,
                    nx : i32, ny : i32,
                    uc : &mut Vec<Vec<f64>>,
                    step : i32)
{
    let mut result_string = String::new();

    let mut new_str = String::new();
    new_str.push_str("out");
    new_str.push_str(&step.to_string());
    new_str.push_str(".vtk");
    // let path = Path::new("out.vtk" + &step.to_string());
    let path = Path::new(&new_str);
    let display = path.display();

    let mut file = match File::create(&path) {
        Err(why) => panic!("couldn't create {}", display),
        Ok(file) => file,
    };

    result_string.push_str("# vtk DataFile Version 2.0\n");
    result_string.push_str("This is a test file for the vtk format file export\n");
    result_string.push_str("ASCII\n");
    result_string.push_str("DATASET UNSTRUCTURED_GRID\n\n");

    result_string.push_str("POINTS ");
    result_string.push_str(&((nx + 1) * (ny + 1)).to_string());
    result_string.push_str(" double\n");

    for i in 0..ny+1{
        for j in 0..nx+1{
            let formated_fl1 = format!{"{:.20}", (i as f64) / (ny as f64)};
            let formated_fl2 = format!{"{:.20}", (j as f64) / (nx as f64)};
            let formated_fl3 = format!{"{:.20}", 0.0f64};

            result_string.push_str(&formated_fl1);
            result_string.push_str(" ");
            result_string.push_str(&formated_fl2);
            result_string.push_str(" ");
            result_string.push_str(&formated_fl3);
            result_string.push_str("\n");
        }
    }

    let formated_str = format!{"{:.20} {:.20}", (nx * ny).to_string(), (5 * (nx * ny)).to_string()};
    result_string.push_str("\nCELLS ");
    result_string.push_str(&formated_str);
    result_string.push_str("\n");

    for i in 0..ny{
        for j in 0..nx{
            result_string.push_str("4  ");
            result_string.push_str(&(j + i * nx + i).to_string());
            result_string.push_str("  ");
            result_string.push_str(&(j + i * nx + i + 1).to_string());
            result_string.push_str("  ");
            result_string.push_str(&(j + (i + 1) * nx + i + 2).to_string());
            result_string.push_str("  ");
            result_string.push_str(&(j + (i + 1) * nx + i + 1).to_string());
            result_string.push_str("\n");
        }
    }

    result_string.push_str("\nCELL_TYPES   ");
    result_string.push_str(&(nx * ny).to_string());
    result_string.push_str("\n");

    for i in 0..ny * nx {
        result_string.push_str("9 ");
    }

    result_string.push_str("\nCELL_DATA   ");
    result_string.push_str(&(nx * ny).to_string());
    result_string.push_str("\n");

    result_string.push_str("SCALARS u FLOAT\n");
    result_string.push_str("LOOKUP_TABLE values_table\n");

    for i in 0..ny{
        for j in 0..nx{
            // let copy_s = s.clone();
            if !in_structure(Point(i, j), &s){
                let formated = format!{"{:.20}\n", (*uc)[i as usize][j as usize]};
                result_string.push_str(&formated);
            } else {
                let formated = format!{"{:.20}\n", s.source.p_amp};
                result_string.push_str(&formated);
            }
        } 
    }

    match file.write_all(result_string.as_bytes()) {
        Err(why) => panic!("couldn't write to {}: {}", display, why.description()),
        Ok(_) => () /*println!("successfully wrote to {}", display)*/,
    }
}

enum EdgeType {
    North,
    South,
    West,
    East
}

enum CornerType {
    NorthWest,
    NorthEast,
    SouthWest,
    SouthEast
}

fn on_edge(p : Point, s : &Scenario) -> Option<EdgeType>{
    let Point(x, y) = p;

    let check_y = || y != 0 && y != s.nx - 1;
    let check_x = || x != 0 && x != s.ny - 1;

    let s_ny = s.ny - 1;
    let s_nx = s.nx - 1;

    match (x, check_y()){
        (0,       true) => return Some(EdgeType::North),
        (s_ny ,    true) => return Some(EdgeType::South),
        _             => (),
    }

    match (y, check_x()){
        (0 ,      true) => return Some(EdgeType::West),
        (s_nx, true) => return Some(EdgeType::South),
        _             => (),
    }

    None
}

fn on_corner(p : Point, s : &Scenario) -> Option<CornerType>{
    let Point(x, y) = p;
    let s_nx = s.nx - 1;
    let s_ny = s.ny - 1;

    match (x, y){
        (0,     0)      =>   return Some(CornerType::NorthWest),
        (0,     s_nx)   =>   return Some(CornerType::NorthEast),
        (s_ny,  0)      =>   return Some(CornerType::SouthWest),
        (s_nx,  s_ny)   =>   return Some(CornerType::SouthEast),
        _               =>   None,
    }
}

fn on_structure_edge(p : Point, s : &Scenario) -> Option<EdgeType> {
    let Point(x, y) = p;
    for i in 0..s.nr_struct{
        let p00 = s.structures[i as usize].corner0.0;
        let p01 = s.structures[i as usize].corner0.1;
        let p10 = s.structures[i as usize].corner1.0;
        let p11 = s.structures[i as usize].corner1.1;
        let p20 = s.structures[i as usize].corner2.0;
        let p21 = s.structures[i as usize].corner2.1;
        let p30 = s.structures[i as usize].corner3.0;
        let p31 = s.structures[i as usize].corner3.1;

        if y > p01 && y < p11 && x == p00 {
            return Some(EdgeType::North);
        } else if x > p10 && x < p20 && y == p11 {
            return Some(EdgeType::East);
        } else if y > p31 && y < p21 && x == p30 {
            return Some(EdgeType::South);
        } else if y > p00 && x < p30 && y == p01 {
            return Some(EdgeType::West);
        }
    }
    
    None
}

fn on_structure_corner(p : Point, s : &Scenario) -> Option<CornerType> {
    let Point(x, y) = p;

    for i in 0..s.nr_struct{
        let p00 = s.structures[i as usize].corner0.0;
        let p01 = s.structures[i as usize].corner0.1;
        let p10 = s.structures[i as usize].corner1.0;
        let p11 = s.structures[i as usize].corner1.1;
        let p20 = s.structures[i as usize].corner2.0;
        let p21 = s.structures[i as usize].corner2.1;
        let p30 = s.structures[i as usize].corner3.0;
        let p31 = s.structures[i as usize].corner3.1;

        if x == p00 && y == p01 {
            return Some(CornerType::NorthWest);
        } else if x == p10 && y == p11 {
            return Some(CornerType::NorthEast);
        } else if x == p20 && y == p21 {
            return Some(CornerType::SouthEast);
        } else if x == p30 && y == p31 {
            return Some(CornerType::SouthWest);
        }
    }

    None
}

fn in_structure(p : Point, s : &Scenario) -> bool
{
    let Point(x, y) = p;

    for i in 0..s.nr_struct{
        let p00 = s.structures[i as usize].corner0.0;
        let p01 = s.structures[i as usize].corner0.1;
        let p10 = s.structures[i as usize].corner1.0;
        let p11 = s.structures[i as usize].corner1.1;
        let p20 = s.structures[i as usize].corner2.0;
        let p21 = s.structures[i as usize].corner2.1;
        let p30 = s.structures[i as usize].corner3.0;
        let p31 = s.structures[i as usize].corner3.1;

        if x > p00 && y < p30 && y > p01 && y < p11{
            return true;
        }
    }

    return false;
}

//fn compute_node(p : Point, ub : &Vec<Vec<f64>>, ua : &Vec<Vec<f64>>, gain : f64) -> f64
fn compute_node(p : Point,
     ubc : f64, ub_xp_y : f64, ub_xm_y : f64, ub_x_yp : f64, ub_x_ym : f64, uac : f64, ucc : f64,
    gain : f64) -> f64
{
    let Point(x, y) = p;

    let mut aux : f64;
    let mut aux2 : f64;
    aux = 2. * ubc - uac;
    aux2 = ub_xp_y - 4. * ubc; // TODO: bug here?
    aux2 += ub_xm_y + ub_x_yp;
    aux2 += ub_x_ym;
    aux2 *= gain;
    aux+aux2;
    aux
    // aux = 2. * ub[x as usize][y as usize] - ua[x as usize][y as usize];
    // aux2 = ub[(x + 1) as usize][y as usize] - 4. * ub[(x + 1) as usize][y as usize];
    // aux2 += ub[(x - 1) as usize][y as usize] + ub[x as usize][(y + 1) as usize];
    // aux2 += ub[x as usize][(y - 1) as usize];
    // aux2 *= gain;
    // aux += aux2;
    // aux
}

// fn compute_edge_node(i : i32, j : i32, side : EdgeType, ub : &Vec<Vec<f64>>) -> f64
fn compute_edge_node(i : i32, j : i32, side : EdgeType,
    ubc : f64, ub_xp_y : f64, ub_xm_y : f64, ub_x_yp : f64, ub_x_ym : f64, uac : f64, ucc : f64) -> f64
{
    match side {
        North   => return ub_xp_y,
        East    => return ub_x_ym,
        South   => return ub_xm_y,
        West    => return ub_x_yp,
    }
    // match side{
    //     North    => return ub[(i + 1) as usize][j as usize],
    //     East     => return ub[i as usize][(j - 1) as usize],
    //     South    => return ub[(i - 1) as usize][j as usize],
    //     West     => return ub[i as usize][(j + 1) as usize],
    // }
}

// fn compute_corner_node(i : i32, j : i32, corner : CornerType, ub : &Vec<Vec<f64>>) -> f64
fn compute_corner_node(i : i32, j : i32, corner : CornerType,
    ubc : f64, ub_xp_y : f64, ub_xm_y : f64, ub_x_yp : f64, ub_x_ym : f64, uac : f64, ucc : f64) -> f64
{
    match corner {
        NorthWest      => return (ub_x_yp + ub_xp_y) / 2.,
        NorthEast      => return (ub_xp_y + ub_x_ym) / 2.,
        SouthEast      => return (ub_x_ym + ub_xm_y) / 2.,
        SouthWest      => return (ub_xm_y + ub_x_yp) / 2.,
    }
    // match corner{
    //     NorthWest   => return ub[i as usize][(j + 1) as usize] + ub[(i + 1) as usize][j as usize] / 2.,
    //     NortEast    => return ub[(i + 1) as usize][j as usize] + ub[i as usize][(j - 1) as usize] / 2.,
    //     SouthEast   => return ub[i as usize][(j - 1) as usize] + ub[(i -1) as usize][j as usize] / 2.,
    //     SouthWest   => return ub[(i - 1) as usize][j as usize] + ub[i as usize][(j + 1) as usize] / 2.,
    // }
}

// fn compute_structure_corner_node(i : i32, j : i32, corner : CornerType, ub: &Vec<Vec<f64>>) -> f64
fn compute_structure_corner_node(i : i32, j : i32, corner : CornerType, 
    ubc : f64, ub_xp_y : f64, ub_xm_y : f64, ub_x_yp : f64, ub_x_ym : f64, uac : f64, ucc : f64) -> f64
{
    match corner {
        NorthWest   => return (ub_x_ym + ub_xm_y) / 2.,
        NortEast    => return (ub_xm_y + ub_x_yp) / 2.,
        SouthEast   => return (ub_x_yp + ub_xp_y) / 2.,
        SouthWest   => return (ub_xp_y + ub_x_ym) / 2.,
    }
    // match corner{
    //     NorthWest   => return ub[i as usize][(j - 1) as usize] + ub[(i - 1) as usize][j as usize] / 2.,
    //     NorthEast   => return ub[(i - 1) as usize][j as usize] + ub[i as usize][(j + 1) as usize] / 2.,
    //     SouthEast   => return ub[i as usize][(j + 1) as usize] + ub[(i + 1) as usize][j as usize] / 2.,
    //     SouthWest   => return ub[(i + 1) as usize][j as usize] + ub[i as usize][(j - 1) as usize] / 2.,
    // }
}

// fn compute_structure_edge_node(i : i32, j : i32, side : EdgeType, ub : &Vec<Vec<f64>>) -> f64
fn compute_structure_edge_node(i : i32, j : i32, side : EdgeType, 
    ubc : f64, ub_xp_y : f64, ub_xm_y : f64, ub_x_yp : f64, ub_x_ym : f64, uac : f64, ucc : f64) -> f64
{
    match side {
        North   => return ub_xm_y,
        East    => return ub_x_yp,
        South   => return ub_xp_y,
        West    => return ub_x_ym,
    }
    // match side{
    //     North   => return ub[(i - 1) as usize][j as usize],
    //     East    => return ub[i as usize][(j + 1) as usize],
    //     South   => return ub[(i + 1) as usize][j as usize],
    //     West    => return ub[i as usize][(j - 1) as usize],
    // }
}

fn is_source(p : Point, radius : i32, source_active : &bool, s : &Scenario) -> bool
{  
    let Point(x, y) = p;
    let mut val : f64;

    val = (s.source.x - x).pow(2) as f64;
    val += (s.source.y - y).pow(2) as f64;
    val = val.sqrt();

    if !source_active{
        return false;
    } else if val as i32 <= radius {
        return true;
    }

    return false;
}

fn pulse_source(radius : i32, step : i32, amp : f64, s : &Scenario, uc : &mut Vec<Vec<f64>>)
{
    // Note -> this should modify the argument
    let n_x = s.nx;
    let n_y = s.ny;
    let active = true;


    for i in 0..n_x{
        for j in 0..n_y{
            let is_src = is_source(Point(i as i32, j as i32), radius, &active, s);
            // s = t;
            if is_src{
                uc[i as usize][j as usize] = amp * ((step as f64) * PI / 4.).sin();
            }
        }
    }
}

pub fn s_compute_acoustics(s : & Scenario, 
                        uc : & mut Vec<Vec<f64>>,
                        ub : & mut Vec<Vec<f64>>,
                        ua : & mut Vec<Vec<f64>>,
                        max_threads : i32)
{
    let mut step : i32 = 0;
    let mut source_active : bool = true;
    let place : i32;
    let radius : i32 = s.source.radius;

    let n_x = s.nx;
    let n_y = s.ny;
    let pool = ThreadPool::new(max_threads as usize);
    let thread_load = n_x / max_threads;
    let (tx, rx) = mpsc::channel();

    while (step < (s.max_time as f64 / s.dt) as i32)
    {
	//let start = Instant::now();
       // TODO: paralize this 
        if step < (s.max_time as f64 / s.dt) as i32 / 2{
            //pulse_source(radius, step, copy_p_amp, &s, uc);
            pulse_source(radius, step, s.source.p_amp, &s, uc);
	} else if source_active{
            for i in 0..n_x{
                for j in 0..n_y{
                    if is_source(Point(i, j), radius, &source_active, &s){
                        (*ua)[i as usize][j as usize] = 0 as f64;
                        (*ub)[i as usize][j as usize] = 0 as f64;
                        (*uc)[i as usize][j as usize] = 0 as f64;
                    }
                }
            }

            source_active = false;
        }

	//let duration = start.elapsed();
	//println!("Time elapsed 1 is {:?}", duration);

	let new_start = Instant::now();
        /*  PARALELL VERSION */
        for thread_count in 0..max_threads{
            let ub = ub.clone();
            let ua = ua.clone();
            let uc = uc.clone();
            let s = s.clone();
            let tx = tx.clone();
	pool.execute(move || {
	for i in thread_count * thread_load .. (thread_count + 1) * thread_load{
                    for j in 0..n_y{
                        let tx_clone = tx.clone();

                        let ubc = ub[i as usize][j as usize];
                        let ub_xp_y = ub[(i + 1) as usize][j as usize];
                        let ub_xm_y = if (i >= 1) {
                                        ub[(i - 1) as usize][j as usize]         
                                        }   else {0.};
                        let ub_x_yp = ub[i as usize][(j + 1) as usize];
                        let ub_x_ym = if (j >= 1) {
                                        ub[i as usize][(j - 1) as usize]
                                    } else {0.};
                        let uac = ua[i as usize][j as usize];
                        let ucc = uc[i as usize][j as usize];
                        let ss = s.clone();

                        let on_corner_res = on_corner(Point(i, j), &ss);
                        let on_edge_res = on_edge(Point(i, j), &ss);
                        let on_structure_edge_res = on_structure_edge(Point(i, j), &ss);
                        let on_structure_corner_res = on_structure_corner(Point(i, j), &ss);
                        let in_structure_res = in_structure(Point(i, j), &ss);
                        let is_source_res = is_source(Point(i, j), radius, &source_active, &ss);
                        
                        let gain = (ss.dx * ss.dx) / (ss.dt * ss.dt);
                        match (on_corner_res, on_edge_res, on_structure_corner_res,
                                on_structure_edge_res, in_structure_res, is_source_res){
                            (None, None, None, None, false, false) =>
                                tx_clone.send((i, j, 
                                    compute_node(Point(i, j), ubc, ub_xp_y, ub_xm_y, ub_x_yp, ub_x_ym, uac, ucc, gain))).unwrap(),
                            (_, Some(t), _, _, _, _) =>
                                tx_clone.send((i, j, 
                                    compute_edge_node(i, j, t, ubc, ub_xp_y, ub_xm_y, ub_x_yp, ub_x_ym, uac, ucc))).unwrap(),
                            (Some(t), _, _, _, _, _) =>
                                tx_clone.send((i, j,
                                    compute_corner_node(i, j, t, ubc, ub_xp_y, ub_xm_y, ub_x_yp, ub_x_ym, uac, ucc))).unwrap(),    
                            (_, _, _, Some(t), _, _) =>
                                tx_clone.send((i, j, 
                                    compute_structure_edge_node(i, j, t, ubc, ub_xp_y, ub_xm_y, ub_x_yp, ub_x_ym, uac, ucc))).unwrap(),
                            (_, _, Some(t), _, _, _) =>
                                tx_clone.send((i, j,
                                    compute_structure_corner_node(i, j, t, ubc, ub_xp_y, ub_xm_y, ub_x_yp, ub_x_ym, uac, ucc))).unwrap(),
                            _ => (),
                        }
                    }
                }
            });
        }

	let duration = new_start.elapsed();
	println!("pre -1 elapsed {:?}", duration);

        for i in max_threads * thread_load .. n_x{
            for j in 0..n_y{
                let tx_clone = tx.clone();

                let ubc = ub[i as usize][j as usize];
                let ub_xp_y = ub[(i + 1) as usize][j as usize];
                let ub_xm_y = if (i >= 1) {
                                ub[(i - 1) as usize][j as usize]         
                                }   else {0.};
                let ub_x_yp = ub[i as usize][(j + 1) as usize];
                let ub_x_ym = if (j >= 1) {
                                ub[i as usize][(j - 1) as usize]
                            } else {0.};
                let uac = ua[i as usize][j as usize];
                let ucc = uc[i as usize][j as usize];
                let ss = s.clone();

                let start_critical_path = SystemTime::now();

                let on_corner_res = on_corner(Point(i, j), &ss);
                let on_edge_res = on_edge(Point(i, j), &ss);
                let on_structure_edge_res = on_structure_edge(Point(i, j), &ss);
                let on_structure_corner_res = on_structure_corner(Point(i, j), &ss);
                let in_structure_res = in_structure(Point(i, j), &ss);
                let is_source_res = is_source(Point(i, j), radius, &source_active, &ss);
                
                let gain = (ss.dx * ss.dx) / (ss.dt * ss.dt);
                match (on_corner_res, on_edge_res, on_structure_corner_res,
                        on_structure_edge_res, in_structure_res, is_source_res){
                    (None, None, None, None, false, false) =>
                        tx_clone.send((i, j, 
                            compute_node(Point(i, j), ubc, ub_xp_y, ub_xm_y, ub_x_yp, ub_x_ym, uac, ucc, gain))).unwrap(),
                    (_, Some(t), _, _, _, _) =>
                        tx_clone.send((i, j, 
                            compute_edge_node(i, j, t, ubc, ub_xp_y, ub_xm_y, ub_x_yp, ub_x_ym, uac, ucc))).unwrap(),
                    (Some(t), _, _, _, _, _) =>
                        tx_clone.send((i, j,
                            compute_corner_node(i, j, t, ubc, ub_xp_y, ub_xm_y, ub_x_yp, ub_x_ym, uac, ucc))).unwrap(),    
                    (_, _, _, Some(t), _, _) =>
                        tx_clone.send((i, j, 
                            compute_structure_edge_node(i, j, t, ubc, ub_xp_y, ub_xm_y, ub_x_yp, ub_x_ym, uac, ucc))).unwrap(),
                    (_, _, Some(t), _, _, _) =>
                        tx_clone.send((i, j,
                            compute_structure_corner_node(i, j, t, ubc, ub_xp_y, ub_xm_y, ub_x_yp, ub_x_ym, uac, ucc))).unwrap(),
                    _ => (),
                }
            }
        }

	let duration = new_start.elapsed();
	println!("Duration 1 is {:?}", duration);
  
        for i in 0..n_x{
	    for j in 0..n_y{
                let (ii, jj, v) = rx.recv().unwrap();
                (*uc)[ii as usize][jj as usize] = v;
            }
        }

	let duration = new_start.elapsed();
	println!("Duration 2 is {:?}", duration);

	//let start = Instant::now();

        let xchg = (*ua).clone();
        (*ua) = (*ub).clone();
        (*ub) = (*uc).clone();
        (*uc) = xchg; 

        step += 1;

	//let duration = start.elapsed();
	//println!("Duration 3 is {:?}", duration);
    }
}

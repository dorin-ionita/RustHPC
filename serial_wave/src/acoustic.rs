use crate::Point;
use crate::Scenario;

use std::f64::consts::PI;

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

fn on_edge(p : Point, s : Scenario) -> Option<EdgeType>{
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

fn on_corner(p : Point, s : Scenario) -> Option<CornerType>{
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

fn on_structure_edge(p : Point, s : Scenario) -> Option<EdgeType> {
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

fn on_structure_corner(p : Point, s : Scenario) -> Option<CornerType> {
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

fn in_structure(p : Point, s : Scenario) -> bool
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

fn compute_node(p : Point, ub : Vec<Vec<f64>>, ua : Vec<Vec<f64>>, gain : f64) -> f64
{
    let Point(x, y) = p;

    let mut aux : f64;
    let mut aux2 : f64;
    aux = 2. * ub[x as usize][y as usize] - ua[x as usize][y as usize];
    aux2 = ub[(x + 1) as usize][y as usize] - 4. * ub[(x + 1) as usize][y as usize];
    aux2 += ub[(x - 1) as usize][y as usize] + ub[x as usize][(y + 1) as usize];
    aux2 += ub[x as usize][(y - 1) as usize];
    aux2 *= gain;
    aux += aux2;
    aux
}

fn compute_edge_node(i : i32, j : i32, side : EdgeType, ub : Vec<Vec<f64>>) -> f64
{
    match side{
        North    => return ub[(i + 1) as usize][j as usize],
        East     => return ub[i as usize][(j - 1) as usize],
        South    => return ub[(i - 1) as usize][j as usize],
        West     => return ub[i as usize][(j + 1) as usize],
    }
}

fn compute_corner_node(i : i32, j : i32, corner : CornerType, ub : Vec<Vec<f64>>) -> f64
{
    match corner{
        NorthWest   => return ub[i as usize][(j + 1) as usize] + ub[(i + 1) as usize][j as usize] / 2.,
        NortEast    => return ub[(i + 1) as usize][j as usize] + ub[i as usize][(j - 1) as usize] / 2.,
        SouthEast   => return ub[i as usize][(j - 1) as usize] + ub[(i -1) as usize][j as usize] / 2.,
        SouthWest   => return ub[(i - 1) as usize][j as usize] + ub[i as usize][(j + 1) as usize] / 2.,
    }
}

fn compute_structure_corner_node(i : i32, j : i32, corner : CornerType, ub: Vec<Vec<f64>>) -> f64
{
    match corner{
        NorthWest   => return ub[i as usize][(j - 1) as usize] + ub[(i - 1) as usize][j as usize] / 2.,
        NorthEast   => return ub[(i - 1) as usize][j as usize] + ub[i as usize][(j + 1) as usize] / 2.,
        SouthEast   => return ub[i as usize][(j + 1) as usize] + ub[(i + 1) as usize][j as usize] / 2.,
        SouthWest   => return ub[(i + 1) as usize][j as usize] + ub[i as usize][(j - 1) as usize] / 2.,
    }
}

fn compute_structure_edge_node(i : i32, j : i32, side : EdgeType, ub : Vec<Vec<f64>>) -> f64
{
    match side{
        North   => return ub[(i - 1) as usize][j as usize],
        East    => return ub[i as usize][(j + 1) as usize],
        South   => return ub[(i + 1) as usize][j as usize],
        West    => return ub[i as usize][(j - 1) as usize],
    }
}

fn is_source(p : Point, radius : i32, source_active : bool, s : Scenario) -> (bool, Scenario)
{  
    let Point(x, y) = p;
    let mut val : f64;

    val = (s.source.x - x).pow(2) as f64;
    val += (s.source.y - y).pow(2) as f64;
    val = val.sqrt();

    if !source_active{
        return (false, s);
    } else if val as i32 <= radius {
        return (true, s);
    }

    return (false, s);
}

fn pulse_source(radius : i32, step : i32, amp : f64, s : Scenario, uc : &mut Vec<Vec<f64>>)
{
    // Note -> this should modify the argument
    let n_x = s.nx;
    let n_y = s.ny;


    for i in 0..n_x{
        for j in 0..n_y{
            let new_s = s.clone();

            let (is_src, _) = is_source(Point(i as i32, j as i32), radius, true, new_s);
            // s = t;
            if is_src{
                uc[i as usize][j as usize] = amp * ((step as f64) * PI / 4.).sin();
            }
        }
    }
}

fn s_compute_acoustics(s : Scenario, 
                        uc : &mut Vec<Vec<f64>>,
                        ub : &mut Vec<Vec<f64>>,
                        ua : &mut Vec<Vec<f64>>)
{
    let mut step : i32 = 0;
    let mut source_active : bool = true;
    let place : i32;
    let radius : i32 = s.source.radius;

    let n_x = s.nx;
    let n_y = s.ny;

    while (step < (s.max_time as f64 / s.dt) as i32)
    {
        let copy_p_amp = s.source.p_amp;
        let copy_s = s.clone();
        
        if step < (s.max_time as f64 / s.dt) as i32 / 2{
            pulse_source(radius, step, copy_p_amp, copy_s, uc);
        } else if source_active{
            for i in 0..n_x{
                for j in 0..n_y{
                    let source_active_copy = source_active.clone();
                    let copy_2s = s.clone();

                    if is_source(Point(i, j), radius, source_active_copy, copy_2s).0{
                        (*ua)[i as usize][j as usize] = 0 as f64;
                        (*ub)[i as usize][j as usize] = 0 as f64;
                        (*uc)[i as usize][j as usize] = 0 as f64;
                        // (*uc)[i as usize][j as usize] = (*ub)[i as usize][j as usize] = (*ua)[i as usize][j as usize];
                    }
                }
            }

            source_active = false;
        }


        for i in 0..n_x{
            for j in 0..n_y{
                let copy_s = s.clone();
                let copy_s2 = s.clone();
                let copy_s3 = s.clone();
                let copy_s4 = s.clone();
                let copy_s5 = s.clone();
                let copy_s6 = s.clone();
                let source_active_copy = source_active.clone();

                let copy_ua = (*ua).clone();
                let copy_ub = (*ub).clone();
                let copy_uc = (*uc).clone();

                let copy_ua2 = (*ua).clone();
                let copy_ub2 = (*ub).clone();
                let copy_uc2 = (*uc).clone();

                let copy_ub3 = (*ub).clone();
                let copy_ub4 = (*ub).clone();
                let copy_ub5 = (*ub).clone();

                let on_corner_res = on_corner(Point(i, j), copy_s);
                let on_edge_res = on_edge(Point(i, j), copy_s2);
                let on_structure_edge_res = on_structure_edge(Point(i, j), copy_s3);
                let on_structure_corner_res = on_structure_corner(Point(i, j), copy_s4);
                let in_structure_res = in_structure(Point(i, j), copy_s5);

                let is_source_res = is_source(Point(i, j), radius, source_active_copy, copy_s6).0;
                
                let gain = (s.dx * s.dx) / (s.dt * s.dt);
                match (on_corner_res, on_edge_res, on_structure_corner_res,
                         on_structure_edge_res, in_structure_res, is_source_res){
                    (None, None, None, None, false, false) =>
                        (*uc)[i as usize][j as usize] = compute_node(Point(i, j), copy_ub, copy_ua, gain),
                    (_, Some(t), _, _, _, _) =>
                        (*uc)[i as usize][j as usize] = compute_edge_node(i, j, t, copy_ub2),
                    (Some(t), _, _, _, _, _) =>
                        (*uc)[i as usize][j as usize] = compute_corner_node(i, j, t, copy_ub3),
                    (_, _, _, Some(t), _, _) =>
                        (*uc)[i as usize][j as usize] = compute_structure_edge_node(i, j, t, copy_ub4),
                    (_, _, Some(t), _, _, _) =>
                        (*uc)[i as usize][j as usize] = compute_structure_corner_node(i, j, t, copy_ub5),
                    _ => (),
                }

                (*ua)[i as usize][j as usize] = 0.;
            }
        }

        if (step % s.save_time == 0){
            //
        }

        let xchg = (*ua).clone();
        (*ua) = (*ub).clone();
        (*ub) = (*uc).clone();
        (*uc) = xchg; 
        // std::mem::swap(&mut ua, &mut ub);
        // std::mem::swap(&mut ub, &mut uc);
        // let xchg : &mut Vec<Vec<f64>> = ua;
        // let ua = ub;
        // let ub = uc;
        // let uc = xchg;

        step += 1;
    }
}
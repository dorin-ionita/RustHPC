use crate::Point;
use crate::Scenario;

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

// fn is_source(p : Point, radius : i32, source_active : bool)
// {
//     if !source_active{
//         return false;
//     } else if 
// }
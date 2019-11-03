enum EdgeType {
    North,
    South,
    West,
    East
}

fn on_edge(Point p, Scenario s) -> Option<EdgeType>{
    let Point(x, y) = p;

    let check_y = || y != 0 && y != s.nx - 1;
    let check_x = || x != 0 && x != s.ny - 1;

    match (x, check_y()){
        0,       true => return EdgeType::North,
        s.ny - 1,true => return EdgeType::South,
        _             => ();
    }

    match (, check_x()){
        0 ,      true => return EdgeType::West,
        s.nx - 1,true => return EdgeType::South,
        _             => ();
    }

    None
}
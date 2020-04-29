
#[derive(Debug)]
struct Source {
    x       : i32,  // linia sursei acustice
    y       : i32,  // coloane sursei acustice
    radius  : i32,  // raza sursei sferice
    p_amp   : f64,  // valoarea pulsatiei sursei acustice
}

#[derive(Debug)]
struct Point(i32, i32);

#[derive(Debug)]
struct Structure {
    corner0    : Point,
    corner1    : Point,
    corner2    : Point,
    corner3    : Point,
}

#[derive(Debug)]
struct Scenario {
    nx          : i32,
    ny          : i32,
    save_time   : i32,
    nr_struct   : i32,
    structures  : Vec<Structure>,
    struct_idx  : i32,
    source      : Source,
    dx          : f64,
    max_time    : f64,
    dt          : f64
}

impl Default for Structure {
    fn default() -> Structure {
        Structure {
            corner0 : Point(-1, -1),
            corner1 : Point(-1, -1),
            corner2 : Point(-1, -1),
            corner3 : Point(-1, -1),
        }
    }
}

impl Default for Scenario {
    fn default() -> Scenario{
        Scenario{
            nx : 0,
            ny : 0,
            save_time : 0,
            nr_struct : 0,
            structures : Vec::new(),
            struct_idx : 0,
            source : Source {
                x : 0,
                y : 0,
                radius : 0,
                p_amp : 0.,
            },
            dx : 0.,
            max_time : 0.,
            dt : 0.,
        }
    }
}

#[derive(Debug)]
struct Simulation {
    scenaries   : Vec<Scenario>,
    scenario_idx: i32,
    num_scenarios: i32,
}
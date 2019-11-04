mod acoustic;

use std::env;
use std::fs;

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

static MAX_SCENARIOS : i32 = 10;
static MAX_STRUCTURES : i32 = 10;

fn import_data(filename : String, mut sim : Simulation) -> Simulation 
{
    let file_content     = fs::read_to_string(filename).expect("Couldn't read from input file");
    
    let mut file_lines   = file_content.split("\n");
    // println!("Each line printed:");
    for line in file_lines{
        let new_split : Vec<&str> = line.split(" =").collect();
        // println!("New split is {:?}", new_split);
        match new_split.len(){
            2 => {
                    let (meaning, value) : (&str, &str) = (new_split[0].as_ref(), new_split[1]);

                    println!("meaning-{}, value-{}", meaning, value);

                    match meaning{
                        "[NUM_SCENARIOS]" => {
                                let value : String         = value.chars().filter(|c| !c.is_whitespace()).collect();
                                let num_value : i32 = value.parse::<i32>().unwrap();
                                sim.num_scenarios = if num_value  > MAX_SCENARIOS { MAX_SCENARIOS } else { num_value };
                                println!("Managed to parse");
                        },
                        "[SCENARIO]"      => {
                                let value : String         = value.chars().filter(|c| !c.is_whitespace()).collect();
                                sim.scenario_idx           = value.parse::<i32>().unwrap();
                                sim.scenaries.push(Scenario{..Default::default()});

                        },
                        "[SIZEX]"         => {
                                let value : String         = value.chars().filter(|c| !c.is_whitespace()).collect();
                                sim.scenaries[sim.scenario_idx as usize].nx = value.parse::<i32>().unwrap();
                        }
                        "[SIZEY]"         => {
                                let value : String         = value.chars().filter(|c| !c.is_whitespace()).collect();
                                sim.scenaries[sim.scenario_idx as usize].ny = value.parse::<i32>().unwrap();
                        }
                        "[H]"             => {
                                let value : String         = value.chars().filter(|c| !c.is_whitespace()).collect();
                                sim.scenaries[sim.scenario_idx as usize].dx = value.parse::<f64>().unwrap();
                        }
                        "[MAX_TIME]"     => {
                                let value : String         = value.chars().filter(|c| !c.is_whitespace()).collect();
                                sim.scenaries[sim.scenario_idx as usize].max_time = value.parse::<f64>().unwrap();
                        }
                        "[TIME_STEP]"     => {
                                let value : String         = value.chars().filter(|c| !c.is_whitespace()).collect();
                                sim.scenaries[sim.scenario_idx as usize].dt = value.parse::<f64>().unwrap();
                        }
                        "[SAVE_TIME]"     => {
                                let value : String         = value.chars().filter(|c| !c.is_whitespace()).collect();
                                sim.scenaries[sim.scenario_idx as usize].save_time = value.parse::<i32>().unwrap();
                        }
                        "[SRC_X]"         => {
                                let value : String         = value.chars().filter(|c| !c.is_whitespace()).collect();
                                sim.scenaries[sim.scenario_idx as usize].source.x = (value.parse::<f64>().unwrap() *
                                    (sim.scenaries[sim.scenario_idx as usize].ny as f64)) as i32;
                        }
                        "[SRC_Y]"         => {
                                let value : String         = value.chars().filter(|c| !c.is_whitespace()).collect();
                                sim.scenaries[sim.scenario_idx as usize].source.y = (value.parse::<f64>().unwrap() *
                                    (sim.scenaries[sim.scenario_idx as usize].nx as f64)) as i32;
                        }
                        "[SRC_RADIUS]"    => {
                                let value : String         = value.chars().filter(|c| !c.is_whitespace()).collect();
                                sim.scenaries[sim.scenario_idx as usize].source.radius = value.parse::<i32>().unwrap();
                        }
                        "[SRC_AMPLITUDE]" => {
                                let value : String         = value.chars().filter(|c| !c.is_whitespace()).collect();
                                sim.scenaries[sim.scenario_idx as usize].source.p_amp = value.parse::<f64>().unwrap();
                        },
                        "[NUM_STRUCTURES]"=> {
                                let value : String         = value.chars().filter(|c| !c.is_whitespace()).collect();
                                let num_value : i32 = value.parse::<i32>().unwrap();
                                sim.scenaries[sim.scenario_idx as usize].nr_struct =  if num_value  > MAX_STRUCTURES { MAX_STRUCTURES } else { num_value };
                                // println!("Managed to parse");
                        },
                        "[STRUCTURE]"     => {
                                let value : String         = value.chars().filter(|c| !c.is_whitespace()).collect();
                                sim.scenaries[sim.scenario_idx as usize].struct_idx            = value.parse::<i32>().unwrap();
                                sim.scenaries[sim.scenario_idx as usize].structures.push(Structure{..Default::default()});
                        },
                        "[P1]"            => {
                                let vals_split = value.split(" ").filter_map(|s| s.parse::<f64>().ok()).collect::<Vec<_>>();
                                let struct_idx = sim.scenaries[sim.scenario_idx as usize].struct_idx;
                                sim.scenaries[sim.scenario_idx as usize].structures[struct_idx as usize].corner0 = 
                                    Point((vals_split[0] * sim.scenaries[sim.scenario_idx as usize].ny as f64) as i32,
                                          (vals_split[1] * sim.scenaries[sim.scenario_idx as usize].nx as f64) as i32);
                        },
                        "[P2]"            => {
                                let vals_split = value.split(" ").filter_map(|s| s.parse::<f64>().ok()).collect::<Vec<_>>();
                                let struct_idx = sim.scenaries[sim.scenario_idx as usize].struct_idx;
                                sim.scenaries[sim.scenario_idx as usize].structures[struct_idx as usize].corner1 = 
                                    Point((vals_split[0] * sim.scenaries[sim.scenario_idx as usize].ny as f64) as i32,
                                          (vals_split[1] * sim.scenaries[sim.scenario_idx as usize].nx as f64) as i32);
                        },
                        "[P3]"            => {
                                let vals_split = value.split(" ").filter_map(|s| s.parse::<f64>().ok()).collect::<Vec<_>>();
                                let struct_idx = sim.scenaries[sim.scenario_idx as usize].struct_idx;
                                sim.scenaries[sim.scenario_idx as usize].structures[struct_idx as usize].corner2 = 
                                    Point((vals_split[0] * sim.scenaries[sim.scenario_idx as usize].ny as f64) as i32,
                                          (vals_split[1] * sim.scenaries[sim.scenario_idx as usize].nx as f64) as i32);
                        },
                        "[P4]"            => {
                                let vals_split = value.split(" ").filter_map(|s| s.parse::<f64>().ok()).collect::<Vec<_>>();
                                let struct_idx = sim.scenaries[sim.scenario_idx as usize].struct_idx;
                                sim.scenaries[sim.scenario_idx as usize].structures[struct_idx as usize].corner3 = 
                                    Point((vals_split[0] * sim.scenaries[sim.scenario_idx as usize].ny as f64) as i32,
                                          (vals_split[1] * sim.scenaries[sim.scenario_idx as usize].nx as f64) as i32);
                        },
                        _                 => (),
                    }
            },
            _ => (),
        }
    }

    println!("Data read {:?}",sim);

    sim
}

fn main()
{
    let path = String::from("/home/dorin/rust/serial_wave/input");
    let mut sim = Simulation {
        scenaries : Vec::new(),
        scenario_idx : 0,
        num_scenarios : 0,
    };
    import_data(path, sim);
    println!("/home/dorin/rust/serial_wave/input");
}

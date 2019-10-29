use std::env;
use std::fs;

struct Source {
    x       : i32,  // linia sursei acustice
    y       : i32,  // coloane sursei acustice
    radius  : i32,  // raza sursei sferice
    p_amp   : f64,  // valoarea pulsatiei sursei acustice
}

struct Point(i32, i32);

struct Structure {
    corners     : Vec<Point>,
}

struct Scenario {
    nx          : i32,
    ny          : i32,
    save_time   : i32,
    nr_struct   : i32,
    structures  : Vec<Structure>,
    source      : Source,
    dx          : f64,
    max_time    : f64,
    dt          : f64
}

struct Simulation {
    scenaries   : Vec<Scenario>,
    scenario_idx: i32,
    num_scenarios: i32,
}

static MAX_SCENARIOS : i32 = 10;

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
                        "[SCENARIO]"      => println!("Scenario"),
                        "[SIZEX]"         => println!("sizex"),
                        "[SIZEY]"         => println!("sizey"),
                        "[H]"             => println!("h"),
                        "[MAX_TIME]"      => println!("max_time"),
                        "[TIME_STEP]"     => println!("time step"),
                        "[SAVE_TIME]"     => println!("save time"),
                        "[SRC_X]"         => println!("src x"),
                        "[SRC_Y]"         => println!("src y"),
                        "[SRC_RADIUS]"    => println!("src radius"),
                        "[SRC_AMPLITUDE]" => println!("src ampl"),
                        "[NUM_STRUCTURES]"=> println!("num structures"),
                        "[STRUCTURE]"     => println!("structure"),
                        "[P1]"            => println!("p1"),
                        "[P2]"            => println!("p2"),
                        "[P3]"            => println!("p3"),
                        "[P4]"            => println!("p4"),
                        _                 => (),
                    }
            },
            _ => (),
        }
    }

    sim
    // println!("File content is {}", file_content);
    // for line in file_contents.lines(){
        
    // }
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

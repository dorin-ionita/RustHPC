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
}

fn import_data(filename : String) {
    let file_content     = fs::read_to_string(filename).expect("Couldn't read from input file");
    
    let mut file_lines   = file_content.split("\n");
    // println!("Each line printed:");
    for line in file_lines{
        let new_split : Vec<&str> = line.split(" =").collect();
        // println!("New split is {:?}", new_split);
        match new_split.len(){
            2 => {
                    let (meaning, value) = (new_split[0], new_split[1]);
                    println!("meaning {}, value {}", meaning, value);
            },
            _ => (),
        }
    }
    // println!("File content is {}", file_content);
    // for line in file_contents.lines(){
        
    // }
}

fn main()
{
    let path = String::from("/home/dorin/temapp/serial_wave/input");
    import_data(path);
    println!("/home/dorin/temapp/serial_wave/input");
}

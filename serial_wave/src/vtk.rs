use std::fs::File;

fn export_to_vtk(nx : i32, ny : i32)
{
    let mut result_string = String::new();

    let path = Path::new("out.vtk");
    let display = path.display();

    let mut file = match File::create(&path) {
        Err(why) => panic!("couldn't create {}: {}", display, why.description()),
        Ok(file) => file,
    };

    result_string.push_str("# vtk DataFile Version 2.0\n");
    result_string.push_str("This is a test file for the vtk format file export\n");
    result_string.push_str("ASCII\n");
    result_string.push_str("DATASET UNSTRUCTURED_GRID\n\n");

    result_string.push_str("POINTS ");
    result_string.push_str(((nx + 1) * (ny + 1)).to_string());
    result_string.push_str(" double\n");

    for i in 0..ny{
        for j in 0..nx{
            let formated_fl1 = format!{"{:.2}", (i as f64) / (ny as f64)};
            let formated_fl2 = format!{"{:.2}", (j as f64) / (nx as f64)};
            let formated_fl3 = format!{"{:.2}", 0.0f64};

            result_string.push_str(formated_fl1);
            result_string.push_str(" ");
            result_string.push_str(formated_fl2);
            result_string.push_str(" ");
            result_string.push_str(formated_fl3);
            result_string.push_str("\n");
        }
    }

    for i in 0..ny{
        for j in 0..nx{
            result_string.push_str("4 ");
            result_string.push_str((j + i * nx + i).to_string());
            result_string.push_str(" ");
            result_string.push_str((j + i * nx + i + 1).to_string());
            result_string.push_str(" ");
            result_string.push_str((j + (i + 1) * nx + i + 2).to_string());
            result_string.push_str(" ");
            result_string.push_str((j + (i + 1) * nx + i + 1).to_string());
            result_string.push_str("\n");
        }
    }

    result_string.push_str("\nCELL_TYPES   ");
    result_string.push_str((nx * ny).to_string());
    result_string.push_str("\n");

    for i in 0..ny * nx {
        result_string.push_str("9 ");
    }

    result_string.push_str("\nCELL_DATA   ");
    result_string.push_str((nx * ny).to_string());
    result_string.push_str("\n");

    result_string.push_str("SCALARS u FLOAT\n");
    result_string.push_str("LOOKUP_TABLE values_table\n");

    for i in 0..ny{
        for j in 0..nx{
            if !in_structure(Point(i, j)){
                let formated = format!{"{:.2}\n", (*uc)[i as usize][j as usize]};
                result_string.push_str(formated);
            } else {
                let formated = format!{"{:.2}\n", s.source.p_amp};
                result_string.push_str(formated);
            }
        } 
    }

    match file.write_all(result_string.as_bytes()) {
        Err(why) => panic!("couldn't write to {}: {}", display, why.description()),
        Ok(_) => println!("successfully wrote to {}", display),
    }
}
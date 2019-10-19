use std::thread;
use std::sync::mpsc;

fn merge2(v1 : Vec<i32>, v2 : Vec<i32>) -> Vec<i32> 
{
    // TODO: Merge 2 vectors, return the result - sorted vector
    let mut new_vec : Vec<i32> = Vec::with_capacity(v1.len() + v2.len());

    let mut idx1               = 0;
    let mut idx2               = 0;
    
    while idx1 < v1.len() && idx2 < v2.len(){
        if v1[idx1] > v2[idx2] {
            new_vec.push(v1[idx1]);
            idx1 += 1;
        } else {
            new_vec.push(v2[idx2]);
            idx2 += 1;
        }
    }

    while idx1 < v1.len(){
        new_vec.push(v1[idx1]);
        idx1 += 1;
    }

    while idx2 < v2.len(){
        new_vec.push(v2[idx2]);
        idx2 += 1;
    }

    new_vec
}

fn sort(v : Vec<i32>) -> Vec<i32>
{
    let sorted_vect : Vec<i32>;
    let sorted1     : Vec<i32>;
    let sorted2     : Vec<i32>;

    let (tx_lh, rx_lh)      = mpsc::channel();
    let tx_uh               = mpsc::Sender::clone(&tx_lh);
    // let (tx_uh, rx_uh)      = mpsc::channel();
    let divider             = v.len() / (2 as usize);
    let lh                  = v[0..divider].to_vec();
    let uh                  = v[divider..].to_vec();

    if v.len() == 1{
        sorted_vect = v;
    } else {
        
        thread::spawn(move || {
            println!("Creating a lower half thread");
            let local_sorted = sort(lh);
            tx_lh.send(local_sorted).unwrap();
        });

        thread::spawn(move || {
            println!("Creating an upper half thread");
            let local_sorted = sort(uh);
            tx_uh.send(local_sorted).unwrap();
        });

        println!("Merging..");
        sorted1        = rx_lh.recv().unwrap();
        sorted2        = rx_lh.recv().unwrap();
        sorted_vect    = merge2(sorted1, sorted2);
        // Question: can I use the same channel for all the threads instead of just 2?
    }
    
    sorted_vect
}

fn main()
{
    let init_vect      = vec![30, 15, 12, 1, 2, 5, 8, 17, 32, 4];
    let sorted_vect    = sort(init_vect);

    println!("The sorted vector is: {:?}", sorted_vect);
}

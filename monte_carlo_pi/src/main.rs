use std::thread;
use std::sync::mpsc;
use rand::{thread_rng, Rng};

fn in_circle(x : f64, y : f64, radius : f64) -> bool
{
    x * x + y * y < radius
}

fn main() {
    let mut total_in: f32   = 0.;
    let total       : f32   = 1_000_000.;
    
    let each_thread : i32   = 250_000;
    let no_threads  : i32   = 4;
    let (tx, rx)            = mpsc::channel();
    
    for _ in 0..no_threads{
         let tx_clone       = mpsc::Sender::clone(&tx);
         let each_thread    = each_thread;
         thread::spawn(move || {
             for _ in 0..each_thread{
                let mut rng      = thread_rng();
                let rx     : f64 = rng.gen_range(-1., 1.);  
                let ry     : f64 = rng.gen_range(-1., 1.);
                tx_clone.send(in_circle(rx, ry, 1.)).unwrap();
             }
         });
    }
    
    for _ in 0..no_threads * each_thread{
        let result  : bool = rx.recv().unwrap();
        if result{
            total_in += 1.;
        }
    }

    println!("Aproximated PI value is {}",
                total_in / total * 4.);

}

use image::{self, imageops::*};

fn main()
{
    let img     = image::open("./test/pisi.jpg").unwrap();
    let mut img = img.grayscale();
    img.save("./test/edited_pisi.png").unwrap(); 
}
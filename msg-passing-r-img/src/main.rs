// fn main() {
//     println!("Hello, world!");
// }

use image::{self, DynamicImage, GenericImageView};

type F32Matrix = std::vec::Vec<std::vec::Vec<f32>>;

fn create_blur_kernel(kernel_size : u32) -> F32Matrix 
{
    let kernel_val : f32  = 1. / (kernel_size * kernel_size) as f32;
    // println!("kernel value{}", kernel_val);
    let kernel            = vec![vec![kernel_val; kernel_size as usize]; kernel_size as usize];
    kernel
}

fn conv2(m1 : F32Matrix, m2 : F32Matrix) -> f32
{
    let sum : f32 = 0;
    let size = m1.len();

    for i in 1..size{
        for j in 1..size{
            sum += m1[i][j] * m2[i][j];
        }
    }

    sum
}


fn get_partial_image(img : DynamicImage, x : u32, y : u32, len : usize) -> F32Matrix
{
    delta : u32 = (usize as u32) / 2;
    partial_img : F32Matrix = vec![vec![0; len]; len];
    
}

fn filter_img_with_kernel(img : DynamicImage, kernel : F32Matrix) -> ImageBuffer
{
    println!("Just Dummy");
    // let width                = img.dimensions().0;
    let (width, height)   = img.dimensions();
    let new_img           = image::ImageBuffer::new(width, height);
    let kernel_size       = kernel.len();

    for (x, y, pixel) in imgbuf.enumerate_pixels_mut() {
        partial_img : F32Matrix = get_partial_img(img, x, y, kernel.len());

        let r = (0.3 * x as f32) as u8;
        let b = (0.3 * y as f32) as u8;
        *pixel = image::Rgb([r, 0, b]);
    }
    // println!("Width is {}, heigh is {}", width, height);
    img
}

fn main()
{
    let kernel_size : u32 = 3;
    let kernel            = create_blur_kernel(kernel_size);
    // println!("Created kernel is {:?}", kernel);
    let mut img           = image::open("test/pisi.jpg").unwrap();
    img                   = img.grayscale();
    img                   = filter_img_with_kernel(img, kernel);

    img.save("test/edited_pisi.png").unwrap(); 
}


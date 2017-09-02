import java.util.Random;

Random generator, generator_2;
float stdev;
float mean;
  
void setup() {
  size(640,640);
  generator = new Random();
  generator_2 = new Random();
  background(0);
  
  stdev = 50;
  mean = width/2;
}

void draw() {
   float num = (float) generator.nextGaussian();
   float num_2 = (float) generator.nextGaussian();

  num = num*stdev + mean;
  num_2 = num_2*stdev + mean;
  
   // setting the color of the dots
   float abs_nums = abs(width/2 - num) + abs(width/2 - num_2);
   float max_color = stdev*3.5+mean/4;
   
   colorMode(RGB, max_color);
   fill(max_color - abs_nums);
   noStroke();
   ellipse(num, num_2, 8, 8);
}
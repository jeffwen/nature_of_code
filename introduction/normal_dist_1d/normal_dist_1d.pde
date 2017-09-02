import java.util.Random;

Random generator;
float stdev;
float mean;
  
void setup() {
  size(640,150);
  generator = new Random();
  background(0);
  
  stdev = 75;
  mean = width/2;
}

void draw() {
   float num = (float) generator.nextGaussian();
   fill(255, 50);
   noStroke();
   ellipse(num*stdev + mean, height/2, 12, 12);
}
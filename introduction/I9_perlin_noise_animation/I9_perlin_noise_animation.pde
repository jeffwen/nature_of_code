
float zoff = 0.0;
void setup() {
  
  size(400,400);
}

void draw() {
  loadPixels();
 // Start xoff at 0.
float xoff = 0.0; //[bold]
for (int x = 0; x < width; x++) {
  // For every xoff, start yoff at 0.
  float yoff = 0.0; //[bold]

  for (int y = 0; y < height; y++) {
    // Use xoff and yoff for noise().
    float bright = map(noise(xoff,yoff,zoff),0,1,0,255); //[bold]
    // Use x and y for pixel location.
    pixels[x+y*width] = color(bright);
    // Increment yoff.
    yoff += 0.01; //[bold]
    //noiseDetail(1,0.65);
  }
  // Increment xoff.
  xoff += 0.01;  //[bold]
}
zoff += 0.003; 

updatePixels();
}
int cols, rows;
int scl = 20;
float [][] elevation;
float zoff = 0.0;

void setup() {

  size(400, 400, P3D);
  cols = width/scl;
  rows = height/scl;

}

void draw() {
  background(255);

  translate(width/2, height/2);
  rotateX(PI/3);
  translate(-width/2, -height/2);
  
   elevation = new float [rows][cols];
  
  float xoff = 0.0;
  for (int x = 0; x < cols; x++) {
    float yoff = 0.0;
    for (int y = 0; y < rows; y++) {
      
      
      elevation[x][y] = map(noise(xoff, yoff, zoff), 0, 1, -100, 100);
      yoff += 0.1;
      
    }
    xoff += 0.1;
  }
  zoff += 0.005;
  

  for (int x = 0; x < cols-1; x++) {
    beginShape(QUAD_STRIP);
    for (int y = 0; y < rows; y++) {

      vertex(x*scl, y*scl, elevation[x][y]);
      vertex((x+1)*scl, y*scl, elevation[x+1][y]);
    }

    endShape();
  }
}
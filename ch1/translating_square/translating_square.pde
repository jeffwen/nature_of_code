PVector trans_coords;
float[] ending_coords;
float speed;

void setup()
{
  size(300, 300);

  trans_coords = new PVector(0, 0); 
  speed = 60;
  ending_coords = new float[4];
  ending_coords[0] = 60;
  ending_coords[1] = 80;
}

void draw() {
  background(255);
  noStroke();

  if (trans_coords.x < ending_coords[0]) {
    trans_coords.x += ending_coords[0]/speed;
  }

  if (trans_coords.y < ending_coords[1]) {
    trans_coords.y += ending_coords[1]/speed;
  } 

  println(trans_coords.x, trans_coords.y);
  // draw the original position in gray
  fill(192);
  rect(20, 20, 40, 40);

  // draw a translucent red rectangle by changing the coordinates
  fill(255, 0, 0, 128);
  rect(20 + ending_coords[0], 20 + ending_coords[1], 40, 40);

  // draw a translucent blue rectangle by translating the grid
  fill(0, 0, 255, 128);
  pushMatrix();
  translate(trans_coords.x, trans_coords.y);
  rect(20, 20, 40, 40);
  popMatrix();
}
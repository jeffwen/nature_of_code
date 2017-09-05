//[full] Instead of a bunch of floats, we now just have two PVector variables.
PVector location; //[bold]
PVector velocity; //[bold]
//[end]

void setup() {
  size(600,600, P3D);
  location = new PVector(50,50,0); //[bold]
  velocity = new PVector(1,2,1); //[bold]

}

void draw() {
  
  background(255);

  location.add(velocity); //[bold]
  //[full] We still sometimes need to refer to the individual components of a PVector and can do so using the dot syntax: location.x, velocity.y, etc.
  if ((location.x > 150) || (location.x < 25)) { //[bold]
    velocity.x = velocity.x * -1; //[bold]
  } //[bold]
  if ((location.y > 150) || (location.y < 25)) { //[bold]
    velocity.y = velocity.y * -1; //[bold]
  } 
  if ((location.z > 100) || (location.z < -50)) { //[bold]
    velocity.z = velocity.z * -1; //[bold]
  } 
  
  println(location.x,location.y,location.z);
  pushMatrix();
  translate(location.x, location.y, location.z);
  stroke(0);
  fill(175);
  ellipse(location.x,location.y,16,16);
  popMatrix();
  
}
class Mover {
  PVector location;
  PVector velocity;
  
  Mover() {
   location = new PVector(random(width/2),random(height/2));
   velocity = new PVector(random(-2,2),random(-2,2));
 }
  
  void update() {
    location.add(velocity);
  }
  
  void display() {
    stroke(0);
    fill(255);
    ellipse(location.x, location.y, 16, 16); 
  }
  
  void checkEdge() {
    if (location.x > width) {
      location.x = 0;
    } else if (location.x < 0){
      location.x = width;
    }
    
        if (location.y > height) {
      location.y = 0;
    } else if (location.y < 0){
      location.y = height;
    }
  }
}
class Mover {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float topspeed;

  Mover() {
    location = new PVector(width/2, height/2);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0,0);
   
    topspeed = 20;
  }

  void update() {
    
    if (keyPressed){
     if (key == RETURN || key == ENTER) {
       acceleration.set(0,0);
       velocity.set(0,0);
     }
    }
    
    if (mouseX != 0 & mouseY != 0 & !keyPressed) {
      PVector mouse = new PVector(mouseX,mouseY);
      PVector dir = PVector.sub(mouse,location);
      acceleration = dir.normalize();
    }
    
    velocity.add(acceleration.mult(acceleration.mag()));
    velocity.limit(topspeed);
    location.add(velocity);

  }

  void display() {
    stroke(0);
    ellipse(location.x, location.y, 16, 16);
  }

  void checkEdge() {
    if (location.x > width) {
      location.x = 0;
    } else if (location.x < 0) {
      location.x = width;
    }

    if (location.y > height) {
      location.y = 0;
    } else if (location.y < 0) {
      location.y = height;
    }
  }
}
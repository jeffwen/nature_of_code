class Mover {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float topspeed;
  float x, y;

  Mover(PVector temp_acceleration, float temp_topspeed) {
    location = new PVector(width/2, height/2);
    velocity = new PVector(0, 0);
    acceleration = temp_acceleration;
   
    topspeed = temp_topspeed;
    x = random(0,1);
    y = random(100,101);
  }

  void update() {
    
    if (keyPressed){
     if (key == RETURN || key == ENTER) {
       acceleration.set(0,0);
       velocity.set(0,0);
     }
    }
    
    if (key == CODED & keyPressed == true) {
      if (keyCode == UP) {
        acceleration = new PVector(0, -0.01);
        velocity.add(acceleration);
      } else if (keyCode == DOWN) {
        acceleration = new PVector(0, 0.01);
        velocity.add(acceleration);
      } else if (keyCode == LEFT) {
        acceleration = new PVector(-0.01, 0);
        velocity.add(acceleration);
      } else if (keyCode == RIGHT) {
        acceleration = new PVector(0.01, 0);
        velocity.add(acceleration);
      }
    } else {
      x+=0.01;
      y+=0.01;
      acceleration = new PVector(map(noise(x),0,1,-0.1,0.1), map(noise(y),0,1,-0.1,0.1));
      velocity.add(acceleration);
    }
    
    velocity.add(acceleration.mult(0.5));
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
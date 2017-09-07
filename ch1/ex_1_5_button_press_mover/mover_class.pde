class Mover {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float topspeed;
  color c;
  float x;
  float y;

  Mover() {
    location = new PVector(random(width/2), random(height/2));
    velocity = new PVector(0, 0);

    topspeed = 10;
    
    x = 0.01;
    y = 100;
  }

  void update() {

    if (key == CODED & keyPressed == true) {
      if (keyCode == UP) {
        acceleration = new PVector(0, -0.01);
        velocity.add(acceleration);
        c = color(51, 255, 0);
      } else if (keyCode == DOWN) {
        acceleration = new PVector(0, 0.01);
        velocity.add(acceleration);
        c = color(255, 0, 51);
      } else if (keyCode == LEFT) {
        acceleration = new PVector(-0.01, 0);
        velocity.add(acceleration);
        c = color(0, 51, 255);
      } else if (keyCode == RIGHT) {
        acceleration = new PVector(0.01, 0);
        velocity.add(acceleration);
        c = color(0, 51, 255);
      }
    } else {
      x++;
      y++;
      acceleration = new PVector(map(noise(x),0,1,-0.1,0.1), map(noise(y),0,1,-0.1,0.1));
      velocity.add(acceleration);
      c = color(255, 255, 255);
    }

    velocity.limit(topspeed);
    location.add(velocity);
  }

  void display() {
    stroke(0);
    fill(c);
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
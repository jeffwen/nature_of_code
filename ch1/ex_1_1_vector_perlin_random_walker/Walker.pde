class Walker {

  PVector location;
  PVector perlin_ts;
 
  Walker() {
    location = new PVector(width/2, height/2);
    perlin_ts = new PVector(0, 10000);
  }
  
  void render() {
    stroke(5);
    point(location.x, location.y);
  }

 
  void step() {
    location.x += map(noise(perlin_ts.x),0,1,-1,1);
    location.y += map(noise(perlin_ts.y),0,1,-1,1);

    perlin_ts.x += 0.01;
    perlin_ts.y += 0.01;
    
    location.x = constrain(location.x, 0, width-1);
    location.y = constrain(location.y, 0, height-1);
  }
}
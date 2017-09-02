class Walker {
  float x,y;
 
  float tx,ty;
 
  Walker() {
    tx = 0;
    ty = 10000;
    
    x=width/2;
    y=height/2;
  }
  
  void render() {
    stroke(5);
    point(x, y);
  }

 
  void step() {
    x += map(noise(tx),0,1,-1,1);
    y += map(noise(ty),0,1,-1,1);

 
    tx += 0.01;
    ty += 0.01;
    
    x = constrain(x, 0, width-1);
    y = constrain(y, 0, height-1);
  }
}
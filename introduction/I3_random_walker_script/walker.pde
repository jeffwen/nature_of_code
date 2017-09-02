class walker {
  // defining the walker
  float x, y;

  walker() {
    x = width/2;
    y = height/2;
  }

  void render() {
    stroke(2);
    point(x, y);
  }

  void step(int mouseX_dir, int mouseY_dir) {
    float prob = random(1);
    
    if (prob >= 0.5) {
      
      float dist = random(0,3);
      
      // x direction
      if (mouseX_dir > 1) {
        x+=dist;
      } else if (mouseX_dir < -1) {
        x-=dist;
      }
      
      // y direction
      if (mouseY_dir > 1) {
        y+=dist;
      } else if (mouseY_dir < -1) {
        y-=dist;
      }
    } else {
      x+=random(-1,1);
      y+=random(-1,1);
    }
    print(mouseX_dir, "---" , mouseY_dir,"\n");

    x = constrain(x, 0, width-1);
    y = constrain(y, 0, height-1);
    
  }
}
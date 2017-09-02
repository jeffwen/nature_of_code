
void setup() {
 size(480, 480);
 background(0);
}

void draw() {
  float p1 = random(1);
  float p2 = random(1);
  
  if (p2<p1) {
    ellipse(p1*480, p1*p2*480, 8,8);
  }
  
}
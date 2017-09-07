Mover mover;

void setup() {
  size(300, 300);
  mover = new Mover();
 
}

void draw() {
 background(255);
 mover.update();
 mover.checkEdge();
 mover.display();
}
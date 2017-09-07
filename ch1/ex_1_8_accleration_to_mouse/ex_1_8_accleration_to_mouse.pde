Mover mover;

void setup() {
  size(1000, 600);
  mover = new Mover();
 
}

void draw() {
 background(255);
 mover.update();
 mover.checkEdge();
 mover.display();
}
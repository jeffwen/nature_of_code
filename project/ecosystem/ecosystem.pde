Mover fly, fish;

void setup() {
  size(1000, 600);
  fly = new Mover(new PVector(0.01,0.01), 3);
  fish = new Mover(new PVector(0.0001,0.0001), 1);
 
}

void draw() {
 background(255);
 fly.update();
 fly.checkEdge();
 fly.display();
 
 fish.update();
 fish.checkEdge();
 fish.display();
}
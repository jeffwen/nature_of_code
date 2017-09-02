walker w;
int mouseX_temp = 1;
int mouseY_temp = 1;
int mouseX_dir;
int mouseY_dir;

void setup() {
  size(800, 600);

  //Create the walker object 
  w = new walker();
  background(255);
}

void draw() {
  // Run the walker object
  mouseX_dir = (mouseX - mouseX_temp);
  mouseY_dir = (mouseY - mouseY_temp);

  w.step(mouseX_dir, mouseY_dir);
  w.render();

  mouseX_temp = mouseX;
  mouseY_temp = mouseY;
}
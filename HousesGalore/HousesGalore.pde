//House fun
//Day 3
//Morgan Moon

ArrayList<House> myHouses;
boolean jiggling;

void setup() {
  size(400, 300);
  background(255);

  myHouses = new ArrayList<>();

  for (int i = 0; i < 20; i++) {
    House h = new House(random(width), random(height), 70, 30);
    myHouses.add(h);
  }
}


void draw() {
  background(255);
  for (House h : myHouses) {
    h.show();
    if (jiggling) {
      h.jiggle(3);
    }
  }
}

void keyPressed() {
  jiggling = !jiggling;
}

//place a house where mouse is pressed
void mousePressed() {
  myHouses.add(new House(mouseX, mouseY, 20, 100));
  save("myHouses.jpg");
}


void myShape(float x, float y, float w, float h) {
  rect(x, y, w, h);
  triangle(x, y, w+x, y, x+ w/2, y-h);
}

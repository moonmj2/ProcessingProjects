//This is my second homework assignment
//Within this, I will make a traffic light using circles
//that move around the screen and change in diameter.
//Their diameter change can be controlled by pressing the mouse
//on the keyboard
//Morgan Moon
//2/8/24

ArrayList<Stoplight> myStoplight;
boolean changeDiam = false;

//setting up size of box
void setup() {
  size(800, 600);
  background(255);

  myStoplight = new ArrayList<>();

  for (int i = 0; i < 10; i++) {
    Stoplight s = new Stoplight(random(width), random(height), 100);
    myStoplight.add(s);
  }

  for (int i = 0; i < 5; i++) {
    Stoplight s = new Stoplight();
    myStoplight.add(s);
  }
}

//drawing and filling desired shape
void draw() {
  background(255);
  for (Stoplight s : myStoplight) {
    s.show();
    s.update();

    //this grows the diameter by ten each time and updates it in the drawing
    if (changeDiam) {
      s.changeDiam(10);
      s.update();
    }
  }
}

//when the mouse is pressed the growDiam method will either be stopped or set off
void mousePressed() {
  changeDiam =! changeDiam;
  save("homework2.jpg");
}

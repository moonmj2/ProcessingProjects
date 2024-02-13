//object oriented approach for creating a bouncing ball
//Day 2 in-class coding
//Morgan Moon
//1/31/24

Ball b;
Ball b2;

ArrayList<Ball> balls;

void setup() {
  size(800, 600);

  //how many ball objects were just created? (Zero because they are all null)
  balls = new ArrayList<>();
  for (int i = 0; i < 2; i++) {
    Ball b = new Ball();
    balls.add(b);
  }

  //ball creates objects
  b = new Ball();
  b2 = new Ball();
}

void draw() {
  background(0);

  for (Ball ball : balls) {
    ball.show();
    ball.update();
  }
}

void mousePressed() {
  for (int i = 0; i <= 10; i++) {
    balls.add(new Ball(mouseX, mouseY));
    save("day3.jpg");
  }
}

void keyPressed() {
  balls.clear();
}


//void mousePressed() {
//  save("day2.jpg");
////x = mouseX;
////y = mouseY;
////vx *= 2;
//}

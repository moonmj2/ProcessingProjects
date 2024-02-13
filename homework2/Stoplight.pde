class Stoplight {

  //instance variables
  float x, y;
  float diam = 100;
  //other necessary variables
  color r;
  color yellow;
  color g;
  float vx, vy; //velocity

  //first parameter
  Stoplight(float x, float y, float diam) {
    this.x = x;
    this.y = y;
    this.diam = diam;
    this.vx = random(-5, 5);
    this.vy = random(-5, 5);
    this.r = color(255, 0, 0);
    this.yellow = color(255, 255, 0);
    this.g = color(0, 255, 0);
  }

  //second parameter
  //this one assigns random values to everything but color
  Stoplight() {
    x = random(width - diam);
    y = random(height - diam);
    diam = random(2, 25);
    vx = random(-5, 5);
    vy = random(-5, 5);
    r = color(255, 0, 0);
    yellow = color(255, 255, 0);
    g = color(0, 255, 0);
  }

  //this will show each circle
  void show() {
    fill(r);
    circle(x, y, diam);
    fill(yellow);
    circle(x, y + diam, diam);
    fill(g);
    circle(x, y + 2 * diam, diam);
  }

  //this updates each circle's position
  void update() {
    //checks outside boundaries so the stoplight will bounce
    x+= vx;
    y += vy;
    checkBoundaries();
  }

  //will check if stoplight has reached boundaries
  void checkBoundaries() {
    //bottom check
    if (y > height - (2.5) * diam) {
      vy = -vy;
      y = height - (2.5) * diam;
    }

    //top check
    if (y < (.5) * diam) {
      vy = -vy;
      y = (.5) * diam;
    }

    //right wall check
    if (x > width - (.5) * diam) {
      vx = -vx;
      x = width - (.5) * diam;
    }

    //left wall check
    if (x < (.5) * diam ) {
      vx = -vx;
      x = (.5) * diam;
    }
  }

  //this method makes the diameter of the circle change
  void changeDiam(float newDiam) {
    diam -= random(-newDiam, newDiam);
    if (diam <= 30 || diam > 200) {
      diam = 100;
    }
  }
}

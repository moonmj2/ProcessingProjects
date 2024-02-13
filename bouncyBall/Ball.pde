//Our first class defintion
//Defines a ball including variables for its motion

//A class is a defintion from which we can create (instantiate) objects elsewhere in our code
class Ball {
  //instnce variables
  float x, y; //position
  float vx, vy; //velocity variables
  float ax, ay; //acceleration
  float r, g, b;


  //constructor that sets the ball (instance) variables to some sensible values
  //The purpose is to set the instance varibales to sensible values
  //always same as class name
  //returns object that it creates
  Ball() {
    x = random(width);
    y = random(height);
    vx = random(-5, 5);
    vy = random(2, 8);
    ax = 0;
    ay = 0.5;
    r = random(200, 255);
    g = random(200, 255);
    b = random(200, 255);
  }

  Ball(float x, float y) {
    this.x = mouseX;
    this.y = mouseY;
    this.vx = random(-5, 5);
    this.vy = random(2, 8);
    this.ax = 0;
    this.ay = 0.5;
    this.r = random(200, 255);
    this.g = random(200, 255);
    this.b = random(200, 255);
  }

  //Methods typically do something with the instance variables

  //shows the ball
  void show() {
    fill(r, g, b);
    circle(x, y, 50);
  }

  void update() {
    //update the ball's position
    //position changes by the velocity
    x += vx;
    y += vy;

    //velocity changes by the acceleration
    vx += ax;
    vy += ay;

    checkBounce();
  }

  //checks if ball reaches a point where it should bounce
  void checkBounce() {
    //floor check
    if (y > height - 25) {
      vy = -vy;
      y = height -25;
    }

    //ceiling check
    if (y < 25) {
      vy = -vy;
      y = 25;
    }

    //right wall check
    if (x > width - 25) {
      vx = -vx;
      x = width - 25;
    }

    //left wall check
    if (x < 25) {
      vx = -vx;
      x = 25;
    }
  }
}

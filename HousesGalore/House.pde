class House {
  //instance variables
  float x;
  float y;
  float w;
  float h;
  
  
  // constructor (instance of object itself)
  House(float x, float y, float w, float h) {
    //assign the parameter values x,y,w,h to the instance variables xywh 
    //Thats what "this." is
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
   //boolean jiggling;
  }
  
  //method that shows house
  void show() {
      rect(x, y, w, h);
  triangle(x, y, w+x, y, x+ w/2, y-h);
  }
  
  
  //method to make houses jiggle
  void jiggle(float amount) {
   x += random(-amount, amount);
   y += random(-amount, amount);
   
  }
  
  
}

// Object created with the help of The Coding Train tutorial: https://www.youtube.com/watch?v=17WoOqgXsRM

class Star {
  float x;
  float y;
  float z;
  
  float pz;
  
  Star(){
    x = random(-width, width);
    y = random(-height, height - 400);
    z = random(width);
    pz = z;
  }
  
  void speed(){
    z = z - speed;
    if (z < 1){
      z = width;
      x = random(-width, width);
      y = random(-height, height - 400);
      pz = z;
    }
  }
  
  void show(){
    fill(255);
    noStroke();
    
    float sx = map(x / z, 0, 1, 0, width);
    float sy = map(y / z, 0, 1, 0, height - 400);
    
    float r = map(z, 0, width, 10, 0);
    ellipse(sx, sy, r, r);
    
    float px = map(x / pz, 0, 1, 0, width);
    float py = map(y / pz, 0, 1, 0, height - 400);
    
    pz = z;
    stroke(255);
    line(px, py, sx, sy);
    
  }
  
}

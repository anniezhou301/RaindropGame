class Raindrop {
  //declare variables
  float gravity =0.2;
  int diam;
  PVector loc, vel;
//new raindrop
  Raindrop(float tx, float ty) {
    loc = new PVector();
    loc.set(tx, ty);
    diam = 30;
    vel = new PVector();
    vel.set(random(-3, 3), random(-3, 3));
  }
//raindrop falls
  void fall() {
    loc.add(vel);
    vel.y += gravity;
  }
//show raindrow
  void display() {
    fill(206,235,245);
    noStroke();
    ellipse(loc.x, loc.y, diam, diam);
    triangle(loc.x-diam/2, loc.y-3, loc.x+diam/2, loc.y-3, loc.x, loc.y-diam);
  }
  
  //checks if raindrop is in contact with the bucket
  boolean isInContactWith(PVector direction) {
    if (loc.x>direction.x-bucket.wid/2&&loc.x<direction.x+bucket.wid/2&&loc.y+diam>height-50) {
      return true;
    }
    return false;
  }
  //raindrop starts from top
  void reset() {

    loc.set(random(0, width), 0);

    vel.set(random(-3, 3), random(0, 2));
  }
}
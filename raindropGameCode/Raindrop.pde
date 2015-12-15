class Raindrop {
  float gravity =0.1;
  int diam;
  PVector loc, vel;

  Raindrop(float tx, float ty) {
    loc = new PVector();
    loc.set(tx, ty);
    diam = 30;
    vel = new PVector();
    vel.set(random(-5, 5), random(-5, 5));
  }

  void fall() {
    loc.add(vel);
    vel.y += gravity;
  }
  void display() {
    fill(255);
    noStroke();
    ellipse(loc.x, loc.y, diam, diam);
    triangle(loc.x-diam/2, loc.y-4, loc.x+diam/2, loc.y-4, loc.x, loc.y-diam);
  }
  boolean isInContactWith(PVector direction) {
    return true;
  }
  void reset() {
    if (loc.y>=height) {
      loc.y=0;
      vel.y = random(0, 2);
    }
    if (loc.x<=0||loc.x>=width) {
      loc.set(random(0, width),0);
      
      vel.y = random(0, 2);
    }
  }
}
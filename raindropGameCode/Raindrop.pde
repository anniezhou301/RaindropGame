class Raindrop {
  float gravity =0.5;
  int diam;
  PVector loc, vel;

  Raindrop(float tx, float ty) {
    loc = new PVector();
    loc.set(tx, ty);
    diam = 30;
    vel = new PVector();
    vel.set(random(-3, 3), random(-3, 3));
  }

  void fall() {
    loc.add(vel);
    vel.y += gravity;
  }
  void display() {
    fill(200, 240, 255);
    noStroke();
    ellipse(loc.x, loc.y, diam, diam);
    triangle(loc.x-diam/2, loc.y-3, loc.x+diam/2, loc.y-3, loc.x, loc.y-diam);
  }
  boolean isInContactWith(PVector direction) {
    if (dist(loc.x, loc.y, direction.x, direction.y)<=4*diam/5){
      return true;
    }
    return false;
  }
  void reset() {

    loc.set(random(0, width), 0);

    vel.set(random(-3, 3), random(0, 2));
  }
}
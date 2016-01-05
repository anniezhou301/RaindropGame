class Bucket {
//declare variables
  int wid;
  int hei;
  //bucket constructor
  Bucket() {
    wid= 180;
    hei= 45;
  }
  
  //displays the bucket filled with appropriate amount of rain
  void display(int rain) {
    fill(139, 69, 19);
    rect(mouse.x-wid/2, height-50, wid, hei);
    fill(206,235,245);
    rect(mouse.x-wid/2, height-rain-3, wid, 100);
    fill(0);
    rect(0,height-3,width,3);
    
  }
}
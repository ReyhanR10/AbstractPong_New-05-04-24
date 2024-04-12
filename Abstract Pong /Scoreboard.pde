abstract class Scoreboard extends Rectangle {

  Scoreboard (float x, float y, float w, float h, color c) {
    super ( x, y, w, h, c ) ;
  }
   //methods
  void draw() {
    fill (col);
    rect(x, y, w, h);
    fill(defaultCol);
  }

} //END ABstract Class

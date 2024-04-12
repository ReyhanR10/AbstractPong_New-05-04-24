abstract class PongTable extends Rectangle {
  //Global Variables
  //
  PongTable (float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
  } //End PongTable
  //
  //Methods
  void draw () {
    fill ( c ) ;
    rect ( x, y, w, h ) ;
    fill ( 0 ) ;
  }
  // abstract void draw();
  //
  /* Features:
   - Give Ball top and bottom lines to bounce off of
   - Give Ball net dimensions & when it scores
   - Give Paddle edge of net, what it defends
   */
} //End PongTable

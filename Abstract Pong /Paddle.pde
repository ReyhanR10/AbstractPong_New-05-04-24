abstract class Paddle extends Rectangle {
  //Global Variables
  Boolean top, down ;
  float speedPaddle ;
  float tableX, tableY, tableWidth, tableHeight ;
  //
  Paddle ( float x, float y, float w, float h, color c) {
    super ( x, y, w, h, c ) ;

    //Movement Of Paddles

    speedPaddle = 10 ;
    this.top = false ;
    this.down = false ;
  }

  //Paddle Methods
  void draw () {
    //Sketch LOL
    fill ( c ) ;
    rect ( x, y, w, h ) ;
    fill ( 0 ) ;
    if (top == true) {
      movePaddleUp();
    }
    if (down == true) {
      movePaddleDown();
    }
  }

  void movePaddleUp() {
    y -= speedPaddle;
    if (y < tableY) { //>??????????
      y = tableY;
    }
  }

  void movePaddleDown() {
    y += speedPaddle;
    if ((y + h) > (tableY + tableHeight)) {
      y = ((tableY + tableHeight) - h);
    }
  }
   void tableUpdate(float tablexParameter, float tableyParameter, float tablewParameter, float tablehParameter) {
    tableX = tablexParameter;
    tableY = tableyParameter;
    tableWidth = tablewParameter;
    tableHeight = tablehParameter;
  }

  void keyPressedWASD() {
    if (key == 'w' || key == 'W') {
      down = false;
      top = true;
    }
    if ( key == 's' || key == 'S') {
      top = false;
      down = true;
    }
  }

  void keyPressedARROW() {
    if (key == CODED && keyCode == UP) {
      down = false;
      top = true;
    }
    if (key == CODED && keyCode == DOWN) {
      top = false;
      down = true;
    }
  }
}
void keyReleasedWASD() {
    if (key == 'w' || key == 'W') {
      top = false ;
    }
    if (key == 's' || key == 'S') {
      down = false;
    }
  }

  void keyReleasedARROW() {
    if (key == CODED && keyCode == UP) {
      top = false;
    }
    if (key == CODED && keyCode == DOWN) {
      down = false;
    }
  }

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
    tablex = tablexParameter;
    tabley = tableyParameter;
    tablew = tablewParameter;
    tableh = tablehParameter;
  }

  void keyPressedWASD() {
    if (key == 'w' || key == 'W') {
      down = false;
      up = true;
    }
    if ( key == 's' || key == 'S') {
      up = false;
      down = true;
    }
  }

  void keyPressedARROW() {
    if (key == CODED && keyCode == UP) {
      down = false;
      up = true;
    }
    if (key == CODED && keyCode == DOWN) {
      up = false;
      down = true;
    }
  }

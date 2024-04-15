class Baller extends Circle {
  //Global Variables
  //
  float startX, startY, xSpeed, ySpeed, xSpeedChangeDirection, ySpeedChangeDirection ;
  float tableX, tableY, tableW, tableH ;
  float xPaddle, yPaddle, wPaddle, hPaddle ;
  Boolean letsGO ;
  //

  Baller (float  x, float y, float w, float h, color c ) { //END BALL CONSTRUCTOR
    super ( x, y, w, h, c ) ;
    startX = x ;
    startY = y ;
    xSpeed = 5*xSpeedChangeDirection ;
    ySpeed = 5*ySpeedChangeDirection ;
    xSpeedChangeDirection = 1.0 ;
    ySpeedChangeDirection = 1.0 ;
    letsGO = false ; //UR BOOLEAN TFFFFF
  } //END Baller
  //
  //Methods
  float xSpeedChangeDirection () {
    float xSpeedChangeDirection = int ( random( -2, 2 )) ; //BALL GOES LOL IDK WHERE BROOO
    while ( xSpeedChangeDirection == 0 ) {
      xSpeedChangeDirection = int ( random( -2, 2 )) ;
    }
    return xSpeedChangeDirection ;
  }
  float ySpeedChangeDirection() {
    float ySpeedChangeDirection = int (random(-2, 2)); // FK IT BALL GOES RAHHHHHHHHHHHH BOOST POWERRR
    while (ySpeedChangeDirection == 0) {
      ySpeedChangeDirection = int (random(-2, 2));
    }
    return ySpeedChangeDirection ;
  }
  //
  void draw () {
    fill ( c ) ;
    ellipse ( x, y, w, h ) ;
    fill ( 0 ) ;
  } //END DRAW
  color backgroundColour () {
    color nm = 0 ;
    return nm ;
  } //End NightMode
  //
  void move () { //u think Ball cant move u Dummy
    bounce () ;
    x += xSpeed *  xSpeedChangeDirection ;
    y += ySpeed *  ySpeedChangeDirection ;

    if (x < (tableW*1/2)) {
      letsGO = true;
    } else {
      letsGO = false;
    }
    //Students tto Finish


    //Bounce Off top and Bottom, paddles will be later on
  }//End Move Ball
  //
  void bounce () {
     if (this.letsGO == true) {
      if (this.x < (paddlex + paddlew + (w/2)) && this.y > paddley && this.y < (paddley + paddleh)) {
        if (this.x > paddlex - w) {
          this.x = (paddlex + paddlew + (w/2));
          this.xSpeed *= -1;
        } else {
          this.xSpeed *= -1;
        }
      }
    } else {
      if (this.x > (paddlex - (w/2)) && this.y > paddley && this.y < (paddley + paddleh)) {
        if (this.x < paddlex + w) {
          this.x = (paddlex - (w/2));
          this.xSpeed *= -1;
        } else {
          this.xSpeed *= -1;
        }
      }
    }
    if (this.y < tabley + (w/2) || this.y > (tabley + tableh - (w/2))) {
      this.ySpeed *= -1;
    }
    if (this.x < tablex + (w/2) || this.x > tablew - (w/2)) {
      this.xSpeed *=  -1;
    }
  }

    
    
  
  
  
  
} //END BALLER

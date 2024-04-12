import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
PongTable PongTable ;
Baller Baller ;
//
void setup() {
  //size(800, 1000); //Landscape for testing
  fullScreen();
  display();
  //
  color colourBackground = 0 ;
  color colourForeGround =  #F4FC12 ;  
  //
  PongTable = new PongTable ( appWidth*0, appHeight*1/10, appWidth, appHeight*8/10, colourBackground ) ;
  int ballDiameter = ( appWidth > appHeight ) ? appHeight : appWidth ;
  ballDiameter = ballDiameter*1/20 ;
  Baller = new Baller ( PongTable.w*1/2, PongTable.h*1/2, ballDiameter, ballDiameter, colorForeground) ;
  println ( Baller.w ) ;
  
} //End setup
//
void draw() {
  Baller.draw () ;
  //ERROR Check of Display: Landscape ONLY

  //if ( displayCheck==true ) displayLandscape(); //Bru, turn your phun
  //ERROR: play display sound effect from draw()
} //End draw
//
void mousePressed() {
} //End mousePressed
//
void keyPressed() {
} //End keyPressed
//
//End Driver

class ScoreBoard extends Rectangle {
  //class vars
  PFont font = createFont("Kailasa", 55);
  String text;
  int score = 0;
  String scoreText;
  Boolean inNet = false;

  ScoreBoard(color col, float x, float y, float w, float h) {
    super(col, x, y, w, h);
    this.scoreText = str(this.score);
  }

  //methods
  void draw() {
    rectangle();
    fill(blue);
    createText(this.x, this.y, this.w, this.h);
    fill(defaultColor);

    if (this.inNet == true) {
      scoreUpdate();
      this.inNet = false;
    }
  }

  void scoreUpdate() {
    println("BUD U COOKING RIGHT NOW +1");
    this.score += 1;
    this.scoreText = str(this.score);
  }

  void scoreReset() {
    this.score = 0;
    this.scoreText = str(this.score);
  }

  void createText (float x, float y, float w, float h) {
    fill(pink);
    textAlign (CENTER, CENTER);
    textFont(font, 40);
    text(scoreText, x, y, w, h);
    fill(defaultColor);
  }
}

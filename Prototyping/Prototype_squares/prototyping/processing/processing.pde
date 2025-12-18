void settings() {
  fullScreen();
}

void setup() {
  // Use actual canvas size
  int appWidth = width;
  int appHeight = height;

  // DIV (rectangle area for text)
  float divX = appWidth * 0.1;
  float divY = appHeight * 0.1;
  float divW = appWidth * 0.8;
  float divH = appHeight * 0.8;

  // Text
  String title = "Home.";

  // Font
  float fontSize = divH;
  PFont myFont = createFont("Harrington", fontSize);

  background(255);

  // Draw DIV for reference
  noFill();
  rect(divX, divY, divW, divH);

  // Auto-shrink text until it fits
  textFont(myFont, fontSize);
  while (textWidth(title) > divW) {
    fontSize *= 0.95;
    textFont(myFont, fontSize);
  }

  // Draw text
  fill(0);
  textAlign(CENTER, CENTER);
  text(title, divX, divY, divW, divH);
}

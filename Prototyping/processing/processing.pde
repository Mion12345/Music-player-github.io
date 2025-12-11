// Display window
size(500, 100);

// Use actual canvas size
int appWidth = width;
int appHeight = height;

// DIV (rectangle area for text)
float divX = appWidth * 0.1;
float divY = appHeight * 0.1;
float divW = appWidth * 0.8;
float divH = appHeight * 0.8;

// Text
String title = "Wahoo! My text resizes automatically.";

// Font
PFont myFont;
float fontSize = divH;  // start large
myFont = createFont("Harrington", fontSize);

// Draw DIV for reference
rect(divX, divY, divW, divH);

// Auto-shrink text until it fits
textFont(myFont, fontSize);
while (textWidth(title) > divW) {
  fontSize *= 0.95;      // shrink by 5%
  textFont(myFont, fontSize);
}

// Draw text
fill(0);
textAlign(CENTER, CENTER);
text(title, divX, divY, divW, divH);

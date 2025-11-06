void setup() {
  fullScreen(); // use the full display size

  int appWidth = displayWidth;
  int appHeight = displayHeight;

  /* Media Buttons Row */
  int totalButtons = 9; 
  float buttonWidth = appWidth / 15.0; // smaller, so row fits neatly centered
  float buttonHeight = buttonWidth;
  float buttonY = appHeight * 0.7;

  // Center the whole row of buttons horizontally
  float rowWidth = totalButtons * buttonWidth;
  float startX = (appWidth - rowWidth) / 2.0;

  // ----------------------------
  // Play Button
  // ----------------------------
  float playX = startX + 0 * buttonWidth;
  rect(playX, buttonY, buttonWidth, buttonHeight);
  triangle(
    playX + buttonWidth * 0.3, buttonY + buttonHeight * 0.2,
    playX + buttonWidth * 0.3, buttonY + buttonHeight * 0.8,
    playX + buttonWidth * 0.7, buttonY + buttonHeight * 0.5
  );

  // ----------------------------
  // Pause Button
  // ----------------------------
  float pauseX = startX + 1 * buttonWidth;
  rect(pauseX, buttonY, buttonWidth, buttonHeight);
  rect(pauseX + buttonWidth * 0.25, buttonY + buttonHeight * 0.2, buttonWidth * 0.15, buttonHeight * 0.6);
  rect(pauseX + buttonWidth * 0.6, buttonY + buttonHeight * 0.2, buttonWidth * 0.15, buttonHeight * 0.6);

  // ----------------------------
  // Stop Button
  // ----------------------------
  float stopX = startX + 2 * buttonWidth;
  rect(stopX, buttonY, buttonWidth, buttonHeight);
  rect(stopX + buttonWidth * 0.25, buttonY + buttonHeight * 0.25, buttonWidth * 0.5, buttonHeight * 0.5);

  // ----------------------------
  // Shuffle Button
  // ----------------------------
  float shuffleX = startX + 3 * buttonWidth;
  rect(shuffleX, buttonY, buttonWidth, buttonHeight);
  line(shuffleX + buttonWidth * 0.2, shuffleY + buttonHeight * 0.2,
       shuffleX + buttonWidth * 0.8, shuffleY + buttonHeight * 0.8);
  line(shuffleX + buttonWidth * 0.2, shuffleY + buttonHeight * 0.8,
       shuffleX + buttonWidth * 0.8, shuffleY + buttonHeight * 0.2);
  triangle(shuffleX + buttonWidth * 0.75, shuffleY + buttonHeight * 0.75,
           shuffleX + buttonWidth * 0.8, shuffleY + buttonHeight * 0.8,
           shuffleX + buttonWidth * 0.8, shuffleY + buttonHeight * 0.7);
  triangle(shuffleX + buttonWidth * 0.75, shuffleY + buttonHeight * 0.25,
           shuffleX + buttonWidth * 0.8, shuffleY + buttonHeight * 0.2,
           shuffleX + buttonWidth * 0.8, shuffleY + buttonHeight * 0.3);

  // ----------------------------
  // Fast Forward Button
  // ----------------------------
  float ffX = startX + 4 * buttonWidth;
  rect(ffX, buttonY, buttonWidth, buttonHeight);
  triangle(ffX + buttonWidth * 0.15, ffY + buttonHeight * 0.2,
           ffX + buttonWidth * 0.15, ffY + buttonHeight * 0.8,
           ffX + buttonWidth * 0.5, ffY + buttonHeight * 0.5);
  triangle(ffX + buttonWidth * 0.5, ffY + buttonHeight * 0.2,
           ffX + buttonWidth * 0.5, ffY + buttonHeight * 0.8,
           ffX + buttonWidth * 0.85, ffY + buttonHeight * 0.5);

  // ----------------------------
  // Fast Backward Button
  // ----------------------------
  float fbX = startX + 5 * buttonWidth;
  rect(fbX, buttonY, buttonWidth, buttonHeight);
  triangle(fbX + buttonWidth * 0.85, fbY + buttonHeight * 0.2,
           fbX + buttonWidth * 0.85, fbY + buttonHeight * 0.8,
           fbX + buttonWidth * 0.5, fbY + buttonHeight * 0.5);
  triangle(fbX + buttonWidth * 0.5, fbY + buttonHeight * 0.2,
           fbX + buttonWidth * 0.5, fbY + buttonHeight * 0.8,
           fbX + buttonWidth * 0.15, fbY + buttonHeight * 0.5);

  // ----------------------------
  // Favorites Button
  // ----------------------------
  float favX = startX + 6 * buttonWidth;
  rect(favX, buttonY, buttonWidth, buttonHeight);
  beginShape();
  vertex(favX + buttonWidth*0.5, buttonY + buttonHeight*0.75);
  bezierVertex(favX + buttonWidth*0.2, buttonY + buttonHeight*0.5, favX + buttonWidth*0.1, buttonY + buttonHeight*0.2, favX + buttonWidth*0.5, buttonY + buttonHeight*0.35);
  bezierVertex(favX + buttonWidth*0.9, buttonY + buttonHeight*0.2, favX + buttonWidth*0.8, buttonY + buttonHeight*0.5, favX + buttonWidth*0.5, buttonY + buttonHeight*0.75);
  endShape(CLOSE);

  // ----------------------------
  // Play/Pause Combo Button (▶‖)
  // ----------------------------
  float ppX = startX + 7 * buttonWidth;
  rect(ppX, buttonY, buttonWidth, buttonHeight);
  // Half-play triangle (left side)
  triangle(ppX + buttonWidth*0.25, buttonY + buttonHeight*0.25,
           ppX + buttonWidth*0.25, buttonY + buttonHeight*0.75,
           ppX + buttonWidth*0.55, buttonY + buttonHeight*0.5);
  // Half-pause bar (right side)
  rect(ppX + buttonWidth*0.6, buttonY + buttonHeight*0.25, buttonWidth*0.15, buttonHeight*0.5);

  // ----------------------------
  // (Optional) Last Button Slot — Empty
  // ----------------------------
  float lastX = startX + 8 * buttonWidth;
  rect(lastX, buttonY, buttonWidth, buttonHeight);
}

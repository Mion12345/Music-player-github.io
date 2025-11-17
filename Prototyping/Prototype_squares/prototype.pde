/* DIVs 2D Rectangles
- Step One: naming the rectangles by referencing the variables
- Writing a computer program backwards from an object


Future Steps
- Step Two: developing the Display CANVAS & the Ternary Operator
- Step Three: populating variables (local v global and type)
*/


void setup() {
  fullScreen(); // Set the canvas to full screen
  int appWidth = displayWidth;
  int appHeight = displayHeight;


  // Rectangles using ratios
  // Close Button
  float closeButtonX = appWidth * 0.5 / 10;
  float closeButtonY = appHeight * 1.0 / 10;
  float closeButtonWidth = appWidth * 0.8 / 20;
  float closeButtonHeight = appHeight * 0.5 / 10;
  rect(closeButtonX, closeButtonY, closeButtonWidth, closeButtonHeight);


  // Reciter
  float reciterX = appWidth * 13.0 / 20;
  float reciterY = appHeight * 1.0 / 10;
  float reciterWidth = appWidth * 5.5 / 20;
  float reciterHeight = appHeight * 1.5 / 10;
  rect(reciterX, reciterY, reciterWidth, reciterHeight);


  // Image 1
  float image1X = appWidth * 0.5 / 20;
  float image1Y = appHeight * 2.3 / 10;
  float image1Width = appWidth * 4.7 / 20;
  float image1Height = appHeight * 2.5 / 10;
  rect(image1X, image1Y, image1Width, image1Height);


  // Image 2
  float image2X = appWidth * 1.5 / 20;
  float image2Y = appHeight * 6.0 / 10; // Positioned above the music buttons
  float image2Width = appWidth * 3.0 / 20;
  float image2Height = appHeight * 1.5 / 10;
  rect(image2X, image2Y, image2Width, image2Height);


  // Title
  float titleX = appWidth * 6.7 / 20;
  float titleY = appHeight * 1.7 / 10;
  float titleWidth = appWidth * 5.0 / 20;
  float titleHeight = appHeight * 0.7 / 10;
  rect(titleX, titleY, titleWidth, titleHeight);


  // Surah and Track Record (Smaller and side by side)
  float surahWidth = appWidth * 2.5 / 20; // Smaller width
  float surahHeight = appHeight * 2.5 / 10; // Smaller height
  float surahX = appWidth * 13.0 / 20; // Original position
  float surahY = appHeight * 6.0 / 10; // Original position
  rect(surahX, surahY, surahWidth, surahHeight);


  float trackRecordWidth = surahWidth; // Same width as Surah
  float trackRecordHeight = surahHeight; // Same height as Surah
  float trackRecordX = surahX + surahWidth; // Place next to Surah
  float trackRecordY = surahY;
  rect(trackRecordX, trackRecordY, trackRecordWidth, trackRecordHeight);


  // Music Buttons Container (Keep as is)
  float musicContainerWidth = appWidth * 13.0 / 20; // Stretched to 13/20 width
  float musicContainerHeight = appHeight * 1.2 / 10;
  float musicContainerX = (appWidth - musicContainerWidth) / 2; // Centered horizontally
  float musicContainerY = appHeight * 8.2 / 10; // Positioned lower
  rect(musicContainerX, musicContainerY, musicContainerWidth, musicContainerHeight);


  // Music Buttons (Touching each other inside the container)
  int musicButtonCount = 12;
  float musicButtonWidth = musicContainerWidth / musicButtonCount; // Divide container width evenly
  float musicButtonHeight = musicContainerHeight; // Same height as container


  for (int i = 0; i < musicButtonCount; i++) {
    float musicButtonX = musicContainerX + i * musicButtonWidth;
    float musicButtonY = musicContainerY;
    rect(musicButtonX, musicButtonY, musicButtonWidth, musicButtonHeight);
  }
}

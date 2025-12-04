/* Aspect Ratio: Multiple Quran Images Demonstration
   Using teacher structure + your variables
*/

//
// Display
size(500, 250);
int appWidth = width;
int appHeight = height;

//
// DIV (same for both)
float imageDivX = appWidth * 1/4;
float imageDivY = appHeight * 1/10;
float imageDivWidth  = appWidth * 1/2;
float imageDivHeight = appHeight * 4/5;


//
// Image Arrays
int numberOfImages = 2;
int i = 0;   // index

// INDEX LEGEND
// i = 0 → quran
// i = 1 → Reminder

//
// Pathway Variables (your version)
String upArrow = "../../../";
String folder  = "Images/";

String[] fileName = new String[numberOfImages];
fileName[0] = "quran";
fileName[1] = "Reminder";

String[] fileExtension = new String[numberOfImages];
fileExtension[0] = ".jpg";
fileExtension[1] = ".jpg";

String[] imagePathway = new String[numberOfImages];


//
// Image Loading
PImage[] image = new PImage[numberOfImages];
PImage errorImage = loadImage("error.png");  // optional placeholder

// These match teacher style: only one at a time
imagePathway[i] = upArrow + folder + fileName[i] + fileExtension[i];
image[i] = loadImage(imagePathway[i]);

if (image[i] == null) {
  println("ERROR loading: " + imagePathway[i]);
  image[i] = errorImage;
  exit();
}

//
// Hardcoded image widths/heights (teacher style)
int[] imageWidth  = new int[numberOfImages];
int[] imageHeight = new int[numberOfImages];

// REAL sizes — the computer reads these automatically:
imageWidth[0]  = image[0].width;
imageHeight[0] = image[0].height;

imageWidth[1]  = image[1].width;
imageHeight[1] = image[1].height;


//
// Aspect Ratio Calculation
float imageAspectRatio_GreaterOne =
  (imageWidth[i] >= imageHeight[i]) ?
    float(imageWidth[i]) / float(imageHeight[i])
  :
    float(imageHeight[i]) / float(imageWidth[i]);

println("Aspect Ratio >1:", imageAspectRatio_GreaterOne);


//
// Resize Algorithm (teacher % shrinking)
float[] imageWidthAdjusted  = new float[numberOfImages];
float[] imageHeightAdjusted = new float[numberOfImages];

// Start with DIV width
imageWidthAdjusted[i]  = imageDivWidth;
imageHeightAdjusted[i] =
  (imageWidth[i] >= imageDivWidth) ?
      imageWidthAdjusted[i] / imageAspectRatio_GreaterOne
    :
      imageWidthAdjusted[i] * imageAspectRatio_GreaterOne;


//
// Ensure image height fits inside DIV
if (imageHeightAdjusted[i] > imageDivHeight) {

  int indexWhile = 0;

  while (imageHeightAdjusted[i] > imageDivHeight) {

    if (indexWhile++ > 10000) {
      println("ERROR: Infinite loop avoided.");
      imageHeightAdjusted[i] = imageDivHeight;
      break;
    }

    imageWidthAdjusted[i] *= 0.99;
    imageHeightAdjusted[i] = imageWidthAdjusted[i] / imageAspectRatio_GreaterOne;
  }
}


//
// Draw DIV
rect(imageDivX, imageDivY, imageDivWidth, imageDivHeight);

//
// Draw Image
image(image[i], imageDivX, imageDivY, imageWidthAdjusted[i], imageHeightAdjusted[i]);

//
// End Program

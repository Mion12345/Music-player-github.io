/* Aspect Ratio: Quran Image Demonstration
 - introduction: set index manually
*/

//
// Display
size(500, 250); //Portrait, testing smaller DIVs ONLY
int appWidth = width;
int appHeight = height;

//
// Image 1 DIV — larger fractions so image is visible
float image1X = appWidth * 0.1;       // 10% from left
float image1Y = appHeight * 0.1;      // 10% from top
float image1Width = appWidth * 0.8;   // 80% of width
float image1Height = appHeight * 0.8; // 80% of height

rect(image1X, image1Y, image1Width, image1Height);

//
// Image Aspect Ratio Vars & Algorithm
String upArrow = "../../../";
String folder = "Images/";
String quran = "quran";
String fileExtensionJPG = ".jpg";
String imagePathway1 = upArrow + folder + quran + fileExtensionJPG;

PImage image1 = loadImage(imagePathway1);
if (image1 == null) {
  println("Image not found. Check pathway.");
  exit();
}

int imageWidth1 = image1.width;
int imageHeight1 = image1.height;

float image1AspectRatio_GreaterOne = float(imageWidth1) / float(imageHeight1);

float scaleW = image1Width / imageWidth1;
float scaleH = image1Height / imageHeight1;
float finalScale = (scaleW < scaleH) ? scaleW : scaleH;

float imageWidthAdjusted1 = imageWidth1 * finalScale;
float imageHeightAdjusted1 = imageHeight1 * finalScale;

float drawX = image1X + (image1Width - imageWidthAdjusted1) / 2;
float drawY = image1Y + (image1Height - imageHeightAdjusted1) / 2;

image(image1, drawX, drawY, imageWidthAdjusted1, imageHeightAdjusted1);

//
// End Program

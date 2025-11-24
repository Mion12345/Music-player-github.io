/* Aspect Ratio: Reminder
*/
//
//Display
//fullScreen(); //Landscape
size(500, 700); //Portrait
int appWidth = displayWidth; //width
int appHeight = displayHeight; //height
println("Display VARS:", "appWidth:"+appWidth, "appHeight:"+appHeight, "\n\t\t\t\t\t\t\t\t\tFullScreen, displayWidth:"+displayWidth, "displayHeight:"+displayHeight, "\n\t\t\t\t\t\t\t\t\tSize\t\t, width:"+width, "height:"+height);
//
//Population
float image1X = appWidth * 0.5 / 20;
float image1Y = appHeight * 2.3 / 10;
float image1Width = appWidth * 4.7 / 20;
float image1Height = appHeight * 2.5 / 10;
//
//Image Aspect Ratio Vars & Algorithm
//Directory or Pathway, concatentasion
String upArrow = "../../../";
String folder = "Images/";
String Reminder = "Reminder";
String fileExtenstionjpg = "jpg";
String imagePathway1 = upArrow  + Reminder + fileExtenstionjpg;
println("Reminder Pathway:", imagePathway1);
//Image loading & aspect Ration
PImage image1 = loadImage( imagePathway1 );
int imageWidth1 = 1076; //Hardcore
int imageHieght = 1920 //Hardcore
//Aspect Ratio
float image1AspectRatio_GreaterOne = (imageWidth1 =< imageHeight1) ? imageHeight1/imageWidth : ; //Ternary Operator
//Hardcore Greater-Than-One Aspect Ratio
println(image1AspectRatio_GreaterOne);
//
//DIV
rect( imageDivX, imageDivY, imageDivWidth, imageDivHeight );
//
image( image1, imageDivX, imageDivY, imageWidthAdjusted, imageHeightAdjusted );
//image( image1, imageDivX, imageDivY, imageWidthAdjusted, imageHeightAdjusted );

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
float image1AspectRatio_GreaterOne = ;(imageWidth1 =< imageHeight1) ? imageHeight1/imageWidth : ; //Ternary Operator
//ERROR, int populating float: truncating-adding zeros, casting
/* Line Notes
- Hardcoded Greater-Than-One Aspect Ratio, x or / >1 or <1
- 2D information from Image, Apsect Ratio Number
- Answers how to make image bigger or smaller
- Computer calculated DIV width & height
- Computer needs to compare image to DIV size difference
*/
//println("Testing for Decimals, formula unsing ints:", imageWidth1/imageHeight1);
//println("After casting added, Aspect Ratio >1:", image1AspectRatio_GreaterOne);
//Algorithm Decisions (choice)
float imageWidthAdjusted1 = imageDivWidth;
float imageHeightAdjusted = ( imageWidth1 =< imageDivWidth ) ? imageWidthAdjusted1 / image1AspectRatio_GreaterOne : imageWidthAdjusted1 * image1AspectRatio_GreaterOne ; //Ternary Operator

/*
imageWidth1
imageDivWidth
imageHeight1
imageDivHeight
imageDivWidth, imageDivHeight
*/
//if () {} else {} //End IF Aspect Ratio



//DIV
rect( imageDivX, imageDivY, imageDivWidth, imageDivHeight );
//
image( image1, imageDivX, imageDivY, imageDivWidth, imageDivHeight );
//image( image1, imageDivX, imageDivY, imageWidthAdjusted, imageHeightAdjusted );

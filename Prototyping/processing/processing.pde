//*/
//
//Display
//fullScreen(); //Landscape
size(500, 100); //Portrait, testing smaller DIVs ONLY
int appWidth = displayWidth; //widthdisplayWidth
int appHeight = displayHeight; //height
//println("Display VARS:", "appWidth:"+appWidth, "appHeight:"+appHeight);
//println("\t\t\t\tFullScreen, displayWidth:\t"+displayWidth, "\tdisplayHeight:\t"+displayHeight, "\n\t\t\t\tSize\t, width:\t\t"+width, "\theight:\t\t"+height);
//

// Image 1 DIV — larger fractions so image is visible
float stringDivX = appWidth * 0.1;       // 10% from left
float stringDivY = appHeight * 0.1;      // 10% from top
float stringDivWidth = appWidth * 0.8;   // 80% of width
float stringDivHeight = appHeight * 0.8; // 80% of height; //** Make smaller to test height 
//
//Strings, Text
String title
rect(stringDivX, stringDivY, stringDivWidth, stringDivHeight);
//
text(title,stringDivX, stringDivY, stringDivWidth, stringDivHeight);

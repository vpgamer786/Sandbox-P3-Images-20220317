//Global Variable
  float rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1;
  float rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2;
  PImage pic1, pic2;
  float pic1WidthAdjusted, pic1HeightAdjusted, pic2WidthAdjusted, pic2HeightAdjusted;
  int pic1Width, pic1Height, pic2Width,  pic2Height;
  //
 void setup()
  {
  //Geometry: display and orientation (Landscape, portrait, and square)
  fullScreen();
  //Landscape Presentation, not square or protrait
  }//End setup
  //
  //Population
  pic1 = loadImage("Glue1_800x600.jpg"); //Dimension width:800 , height:600
  pic2 = loadImage("800x600_Wallpaper_Blue_Sky.png"); //Dimension width:800 , height:600
  pic1Width = 800;
  pic1Height = 600;
  pic2Width = 800;
  pic2Height = 600;
  //
  //Aspect Ration Calculation
   largerPic1Dimension, smallerPic1Dimension, largerPic2Dimension, smallerPic2Dimension;
  float imageWidthRatioPic1=0.0, imageHeightRatioPic1=0.0, imageWidthRatioPic2=0.0, imageHeightRatioPic2=0.0; //Populated behind IF, must intialize with zero-decimals
  Boolean WidthPic1Larger=false, heightPic1Larger=false, WidthPic2Larger=false, heightPic2Larger=false;
  //
  //
  if ( pic1Width >= pic1Height ) { //ID Larger Dimension: Landscape and Square
  largerPic1Dimension = pic1Width;
  smallerPic1Dimension = pic1Height;
  WidthPic1Larger = true;
} else { //ID Larger Dimension: Portrait
  largerPic1Dimension = pic1Height;
  smallerPic1Dimension = pic1Width;
  heightPic1Larger = true;
} //End pic1 larger dimension ID
//
//
if ( pic2Width >= pic2Height ) { //ID Larger Dimension: Landscape and Square
  largerPic2Dimension = pic2Width;
  smallerPic2Dimension = pic2Height;
  WidthPic2Larger = true;
} else { //ID Larger Dimension: Portrait
  largerPic2Dimension = pic2Height;
  smallerPic2Dimension = pic2Width;
  heightPic2Larger = true;
} //Emd pic2 Larger dimension ID
  println (smallerPic1Dimension, largerPic1Dimension, smallerPic2Dimension, largerPic2Dimension); //Verifying Variable Details (ID Larger Dimension)
  //
  // Note: Single line IFs can be summarized to IF-ELSE or IF-ELSEIF_ELSE
  if ( WidthPic1Larger == true ) imageWidthRatioPic1 = float (largerPic1Dimension) / float (largerPic1Dimension);
  if ( WidthPic1Larger == true ) imageHeightRatioPic1 = float (smallerPic1Dimension) / float (largerPic1Dimension);
  if ( heightPic1Larger == true ) imageWidthRatioPic1 = float (smallerPic1Dimension) / float (largerPic1Dimension);
  if ( heightPic1Larger == true ) imageHeightRatioPic1 = float (largerPic1Dimension) / float (largerPic1Dimension);
  if ( WidthPic2Larger == true ) imageWidthRatioPic2 = float (largerPic2Dimension) / float (largerPic2Dimension);
  if ( WidthPic2Larger == true ) imageHeightRatioPic2 = float (smallerPic2Dimension) / float (largerPic2Dimension);
  if ( heightPic2Larger == true ) imageWidthRatioPic2 = float (smallerPic2Dimension) / float (largerPic2Dimension);
  if ( heightPic2Larger == true ) imageHeightRatioPic2 = float (largerPic2Dimension) / float (largerPic2Dimension);
  println(imageWidthRatioPic1, imageHeightRatioPic1, imageWidthRatioPic2, imageHeightRatioPic2); //Verify Variable Details (Ratios)
//
//
 rectXPic1 = width*1/4;
 rectYPic1 = height*0;
 rectWidthPic1 = width*1/2;
 rectHeightPic1 = height*1/2;
 rectXPic2 = width*1/8; 
 rectYPic2 = height*1/2; 
 rectWidthPic2 = width*6/8; // 1/8 leftover (or 7/8 used), or *3/4 (similar fraction)
 rectHeightPic2 = height*1/2;
 //
 //Adjust widths and heights to rectangle layouts
 pic1WidthAdjusted = rectWidthPic1 * imageWidthRatioPic1; 
 pic1HeightAdjusted = rectHeightPic1 * imageHeightRatioPic1;
 pic2WidthAdjusted = rectWidthPic2 * imageWidthRatioPic2;
 pic2HeightAdjusted = rectHeightPic2 * imageHeightRatioPic2;
 println(pic1Width, pic1Height, pic2Width, pic2Height);
 println(pic1WidthAdjusted, pic1HeightAdjusted, pic2WidthAdjusted, pic2HeightAdjusted);
 //
void draw() 
{ //Note: DRAW Loop repeats 60 times / secound static images, "system resources"
  //Empty Draw Loop, must be present for the Java compiler
  //Rectangle Layout & Image Printing on Canvas
 color red=#FF0000;
 fill(red);
 rect(rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1); //Image 1, landscape presentation
 rect(rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2); //Image 2, landscape presentation
 // Image using Rect() Variables
 //image(pic1, rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1);
 //image(pic2, rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2);
 // Change the Rec() Variable to Aspect Ratio
 image(pic1, rectXPic1, rectYPic1, pic1WidthAdjusted, pic1HeightAdjusted);
 println ("Image of the sky looks so blue and fill fith contrast."); //Great Design Change for Aspect Ratio 
 //image(pic2, rectXPic2, rectYPic2, pic2WidthAdjusted, pic2HeightAdjusted);
 //Center image in rect(), pic2, by changing the yRect() value
 image(pic2, rectXPic2, rectYPic2+(rectYPic2*1/5), pic2WidthAdjusted, pic2HeightAdjusted);
 //
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
}//End mousePressed
//
//End Programm



/*

 
 //
 
 //
 
 //End Programm
 */

//Global Variables
float imageX, imageY, imageWidth, imageHeight, imageWidthRatio=0.0, imageHeightRatio=0.0;
float picWidth, picHeight, largerDimension, smallerDimension;
PImage pic;
Boolean widthLarger=false, heightLarger=false;
//
fullScreen();
//fullScreen();
//Population
pic = loadImage("800x600_Wallpaper_Blue_Sky.png"); //Dimensions: 800, 600
//Note: dimension are found in the image file / Right Click. Properts/ Details
//Alogrithm: Find the larger dimension for aspect ration (comparison of two numbers)
picWidth = 800.0;//decimals need to be delaired
picHeight = 600.0;
if ( picWidth >= picHeight ) { //True: if Landscape or square
  largerDimension = picWidth;
  smallerDimension = picHeight;
  widthLarger = true;
} else { //False, if Portrait
  largerDimension = picHeight;
  smallerDimension = picWidth;
  heightLarger = true;
} //End Dimension Comparision
println (smallerDimension, largerDimension);
//Note: single line IFs can be summarized to IF-ELSE or IF-ELSEIF-ELSE
//Computer chosses which formulae to exexute
if ( widthLarger == true) imageWidthRatio = largerDimension / largerDimension;
if ( widthLarger == true) imageHeightRatio = smallerDimension / largerDimension;
if ( heightLarger == true) imageWidthRatio = smallerDimension / largerDimension;
if ( heightLarger == true) imageHeightRatio = largerDimension / largerDimension;
println(imageHeightRatio, imageHeightRatio); 
 //similar to style="width:100%"
 //similar to style="height:auto"
println(imageWidthRatio, imageHeightRatio);
//Note: println() also verifies decimal places, compiler will truncate
//Answer must be 1.0 and between 0 & 1 (decimal)
//Ratio 1.0 similar to style-"width:100%" (websites)
//Ratio "0.75" similar to style="height:auto" (websites)
imageX = width*0; 
imageY = height*0;
imageWidth = width*imageWidthRatio; 
imageHeight = height*imageHeightRatio;
if ( imageWidth > width ) println( "ERROR: Image is too wide" ); //Simple Display Checker
if( imageHeight > height ) println( "ERROR: Image is too wide" ); //Simple Display Checker
//
rect(imageX, imageY, imageWidth, imageHeight);
image(pic, imageX, imageY, imageWidth, imageHeight);

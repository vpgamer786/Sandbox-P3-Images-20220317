//Global Variables
PImage pic1, pic2;
float rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1, picX1, picY1, picWidth1, picHeight1;
float rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2, picX2, picY2, picWidth2, picHeight2;
//
//Geometry: display and orientation (Landscape, portrait, and square)
//
//Population
pic1 = loadImage(); //Dimension width: , height:
pic2 = loadImage(); //Dimension width: , height:
//
//Aspect Ratio Calculations
//
//Rectangle Layout and Image Drawing to Canvas
rect(rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1); //For Image #1
rect(rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2); //For Image #2
image(pic1, picX1, picY1, picWidth1, picHeight1); //For Image #1, based on rec()1
image(pic2, picX2, picY2, picWidth2, picHeight2); //For Image #2
//
//End Program

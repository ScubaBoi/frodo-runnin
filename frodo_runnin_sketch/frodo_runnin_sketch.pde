//Lord of the Rings: Fellowship of the Ring

float xspeed = 2.5;

void setup (){
  size(1000,700);}
  float circleX = 0;
  
void draw(){
  background(165,247,255);
  
//Sun
//noStroke();
//fill(255,245,0);
//ellipse(0,0,300,300);

sun(); 

//Clouds

//left
//noStroke();
//fill(255);
//ellipse(342,64,99,80);
//ellipse(300,100,138,80);
//ellipse(385,94,159,80);

cloudsLeft(); 

//right
//ellipse(706,137,139,80);
//ellipse(675,100,138,80);
//ellipse(771,94,159,80);
//ellipse(808,143,159,80);

cloudsRight(); 

//Lightest Mountains
//noStroke();
//fill(230);
//triangle(-172,695,749,1015,439,380);
//triangle(-31,1274,1239,719,915,383);

lightestMountains(); 

//Lighter Mountains
//noStroke();
//fill(200);
//triangle(-31,1111,1107,719,708,380);

lighterMountains(); 

//Darkerest Mountains
//noStroke();
//fill(140);
//triangle(-70,703,445,741,117,366);
//triangle(-112,922,610,741,117,366);

darkerestMountains(); 

////Balrog entrance darkness
//noStroke();
//fill(0);
//ellipse(122,644,100,148);
//ellipse(175,693,100,132);
//ellipse(58,700,100,162);

darkness();

////Balrog entrance light
//noStroke();
//fill(255,100,0);
//ellipse(119,667,15,15);

light(); 

//Frodo running from enterance
noStroke();
fill(0);
ellipse(circleX,667,10,10);

//change colors
if (circleX < 190) {
  filter(INVERT); 
}

//RUN FRODO RUUUUUUUUNNN
circleX = circleX + xspeed;

if((circleX > width) || (circleX < 0)) {
    //turn around
    xspeed = xspeed *-1;}
}

void darkness() { 
  noStroke();
fill(0);
ellipse(122,644,100,148);
ellipse(175,693,100,132);
ellipse(58,700,100,162);
} 

void light() { 
  noStroke();
fill(255,100,0);
ellipse(119,667,15,15);
}

void sun() { 
noStroke();
fill(255,245,0);
ellipse(0,0,300,300);
}

void cloudsLeft() { 
noStroke();
fill(255);
ellipse(342,64,99,80);
ellipse(300,100,138,80);
ellipse(385,94,159,80);
} 

void cloudsRight() { 
  ellipse(706,137,139,80);
ellipse(675,100,138,80);
ellipse(771,94,159,80);
ellipse(808,143,159,80);
} 

void lightestMountains() { 
noStroke();
fill(230);
triangle(-172,695,749,1015,439,380);
triangle(-31,1274,1239,719,915,383);
} 

void lighterMountains() { 
noStroke();
fill(200);
triangle(-31,1111,1107,719,708,380);
} 

void darkerestMountains() { 
noStroke();
fill(140);
triangle(-70,703,445,741,117,366);
triangle(-112,922,610,741,117,366);
} 
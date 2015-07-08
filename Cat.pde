void setup()
{
  size(700,700);
  
}

float LeftEyeX = 250;
float LeftEyeY,RightEyeX,RightEyeY;
boolean flag = true;
float disLeft,disRight;


void draw()
{
  clear();
  background(255);
  strokeWeight(5);
  fill(128,64,0);
  triangle(130,300,130,130,300,300);
  triangle(570,300,570,130,400,300);
  
  fill(243,208,177);
  arc(350,400,500,500, -PI, 0);
  
  line(50,350,150,350);                // the mustache of the cat
  line(50,375,150,375);
  line(550,350,650,350);
  line(550,375,650,375);
  
  strokeWeight(0);
  fill(128,64,0);
  triangle(250,400,450,400,350,245);
  
  strokeWeight(5);
  line(100,400,600,400);
  
  
  strokeWeight(5);
  fill(128,64,0);
  triangle(130,300,130,130,300,300);
  triangle(570,300,570,130,400,300);
  
  fill(243,208,177);
  arc(350, 400,500,500, -PI, 0);
  
  line(50,350,150,350);
  line(50,375,150,375);
  line(550,350,650,350);
  line(550,375,650,375);
  
  strokeWeight(0);
  fill(128,64,0);
  triangle(250,400,450,400,350,245);
  
  strokeWeight(5);
  line(100,400,600,400);
  
  fill(255);                           //eyes
  ellipse(250,280,100,100);
  ellipse(450,280,100,100);
  
  fill(0);

   float d = dist(mouseX,mouseY,250,280);
   float Rad = 12.5;
   if (d<Rad) {
     LeftEyeX = mouseX;
     LeftEyeY = mouseY;
   }
   else{
     LeftEyeX = Rad/d*mouseX+(1-Rad/d)*250;
     LeftEyeY = Rad/d*mouseY+(1-Rad/d)*280;
   }
   
   d = dist(mouseX,mouseY,450,280);
   if (d<Rad) {
     RightEyeX = mouseX;
     RightEyeY = mouseY;
   }
   else{
     RightEyeX = Rad/d*mouseX+(1-Rad/d)*450;
     RightEyeY = Rad/d*mouseY+(1-Rad/d)*280;
   }
  
  ellipse(LeftEyeX,LeftEyeY,75,75);
  ellipse(RightEyeX,RightEyeY,75,75);
  
  triangle(350,330,340,320,360,320);     //mouth
  
  noFill();
  arc(340,330,20,20,0,PI);
  arc(360,330,20,20,0,PI);
  
}

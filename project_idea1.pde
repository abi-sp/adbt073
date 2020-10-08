int radius;
float x, y;
float div; //div = divider

void setup()  
{
  size(550, 550); //background size
  radius = 150;
  x = width/2;
  y = height/2;
}

void draw() 
{
  fill(51,51,51,10); //fill(R,G,B,a) transparency
  rect(0, 0, width, height); 
 
  stroke(#3005F5); //blue colour for outline and circles
  strokeWeight(8);
 
  float t = frameCount/div; 
  point(x + radius*sin(t), y + radius*cos(t)); //anticlockwise direction of trail
}

void mouseClicked() 
{
  radius = int(random(50, 150)); 
  x = random(0, width);
  y = random(0, height);
  x = mouseX;
  y = mouseY;
  div = random(10, 30);
}                      

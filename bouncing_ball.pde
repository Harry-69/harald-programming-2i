float rectangleWidth = 400;
float rectangleHeight = 400;

float x = 150;
float y = 170;
float xspeed = 5;
float yspeed = 4;

void setup()
{
  size(500,500);
  noStroke();
  frameRate(60);
  rectMode(CENTER);
}

void draw ()
{
  background(200,6,6);
  if (x>(((width-rectangleWidth)/2)+rectangleWidth)-(15/2)) {
    xspeed *= -1;
  }
  
  if (y>(((height-rectangleHeight)/2)+rectangleHeight)-(15/2)) {
    yspeed *= -1;
  }
  
  if (x<((width-rectangleWidth)/2)-(15/2)) {
    xspeed *= -1;
  }
  
  if (y<((height-rectangleHeight)/2)-(15/2)) {
    yspeed *= -1;
  }
  
  x += xspeed;
  y += yspeed;
  
  noFill();
  stroke(0,0,300);
  rect(250,250,rectangleWidth,rectangleHeight);
  
  if(rectangleWidth == 20 && rectangleHeight == 20) {
    rectangleWidth = 20;
    rectangleHeight = 20;
  }else{
    rectangleWidth --;
    rectangleHeight --;}
    
    noStroke();
    fill(0,0,300);
    ellipse(x,y,20,20);
}
  

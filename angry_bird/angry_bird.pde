float x;
float y; 
float g = 9.82;
//tid = t 
float t = 1; 
float v0 = 100;
float x0 = 0;
float y0 = -1000;
// alpha = a
float alpha = PI/4;
float ypixel;
boolean startSpil = false;
void setup() {
  size(1000, 1000);
  clear();
}

void keyPressed(){
  startSpil = true;
}

void draw() {
  background(0,0,0);
  stroke(255);
  
  line(mouseX, mouseY , x , y);   
  
  
  ellipse(x,y, 15,15);
 ypixel = 1000 - y;
if(startSpil){
    updateModel();}
}



void mousePressed() { 
  updateModel();
  println(x, y, ypixel);
}
// afyreings formel 
void updateModel() {
t = t+0.1;
  y = (-0.5 * g * t*t + v0 * sin(alpha) * t + y0)*-1;  

  if (y>0) {
    x = v0 * cos(alpha) * t + x0;
  } else {
    y=0;
  }
}

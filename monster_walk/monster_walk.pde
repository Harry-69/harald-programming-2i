//hej
float x = 0;

float A = 5;

void setup(){
size(600,600);

}


void draw(){
clear();
fill(100,0,60);
ellipse(x,x,50,50);

fill(0,0,100);
ellipse(A,A,40,40);




x= x+1;
A= A+1;

}

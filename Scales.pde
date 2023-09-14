void setup() {
  size(1000, 1040);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating   
}
void draw() {
int initial=50;
for (int q=0;q<=1000;q+=80){
  for (int m=0;m<=1000;m+=initial)  initial=scale(m,q,(int)(Math.random()*3),(int)(Math.random()*5));}   
}
int scale(int x, int y, int size, int colour) {
int tValue=60;
//colour  
if (colour==0)     fill(202,31,8);
else if(colour==1) fill(0,85,191);
else if(colour==2) fill(235,216,0);
else if(colour==3) fill(75,159,74);
else               fill(205,98,152);  
//size
if (size==1)        tValue=100;
else if (size==2)   tValue=140;
rect(x,y,x+tValue+20,y+80);
for (int i=20;i<=60;i+=40){
  for (int t=20;t<=tValue;t+=40)  ellipse(x+t,y+i,24,24);  
}
int noninitial=tValue+20;  
return noninitial;                            
}

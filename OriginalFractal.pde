public void setup(){
  size(500,500);
  ellipseMode(CENTER);
}
public void draw(){
  background(0);
  fill(255);
  ellipse(250,250,300,300);
  myFractal(250,250,350);
  
}
public void myFractal(int x, int y, int size){
  stroke(#1DEAF0);
  //strokeWeight(.5);
  ellipse(x,y,size,size);
  fill(0);
  if(size > 10){
      myFractal(x+size/2,y,size/2);
      myFractal(x-size/2,y,size/2);
      myFractal(x,y-size/2,size/4);
      myFractal(x,y+size/2,size/4);
      fill(255);
      myFractal(0,0,size/2);
      fill(255);
      myFractal(500,0,size/2);
      fill(255);
      myFractal(0,500,size/2);
      fill(255);
      myFractal(500,500,size/2);
  } 
  
  
}

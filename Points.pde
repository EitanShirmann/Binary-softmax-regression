

//Edit the line function here!!!
float f(float x){
//y = mx + b
return 0.87*x+0.2;

}



class Point{
float x;
float y;
int bias = 1;
int target;

Point(float x_, float y_){
x = x_;
y = y_;
int bias = 1;


}




Point(){


x = random(-1,1);
y = random(-1,1);
if(y>f(x)){
target = 1;
}
else target = -1;


}
float getPixelX(){
return map(x,-1,1,0,width);


}

float getPixelY(){
return map(y,-1,1,width,0);


} 


void show(){
  
float px = getPixelX();
float py = getPixelY();
  
stroke(0);
if(target==1){
  fill(255);
}
else
{ fill(0);
}
ellipse(px,py,13,13);
//line(0,height,width,0);




}



}

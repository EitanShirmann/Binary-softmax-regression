Perceptrn p;


Point[] points = new Point[100];


public void settings() {
  size(800, 800);
}

void setup(){
p = new Perceptrn(3);


for(int i = 0; i<points.length;i++){
points[i] = new Point();

}



}


void draw(){
  
 
  
  background(255);
   
   
  for(Point pt : points){
    float[] inputs = {pt.x,pt.y,pt.bias};
    p.train(inputs, pt.target);
    pt.show();
    int target = pt.target;
    int guess = p.guess(inputs);
    Point p1 = new Point(-1,f(-1));
  Point p2 = new Point(1,f(1));
  line(p1.getPixelX(), p1.getPixelY(), p2.getPixelX(), p2.getPixelY());
  Point p3 = new Point(-1,p.guessY(-1));
  Point p4 = new Point(1,p.guessY(1));
  
  line(p3.getPixelX(), p3.getPixelY(), p4.getPixelX(), p4.getPixelY());
    if(guess==target){
      
      fill(0,255,0);
      
    }else  fill(255,0,0);
    
    noStroke();
      ellipse(pt.getPixelX(),pt.getPixelY(),13,13);
      
 
}




}

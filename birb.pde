class Wave{
  int x;
  int v;
  int y;
  Wave(){
    
    x = 0;
    v = 1;
    y = 0;
    
  }
  void show(){
    stroke(2, 2, 2, 255);
    line(0, y, x, 0);
  }
  void move(){
    if(x<=400){
    x++;
    y++;
    }
    else{
    x=0;
    y=0;
    }
    }
  int getxline(){
    return x;
  }
  
  
}

class cool{

  int ran;
    

  void make(int shapex, int shapey, int shaper){
    ran = (int)(Math.random()*3);
    if(ran==0){
      noStroke();
      fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
      ellipse(shapex, shapey, shaper, shaper);
    }
    if(ran == 1){
    noStroke();
    fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
      rect(shapex-(0.5*shaper), shapey-(0.5*shaper), shaper, shaper);
    }
    if(ran == 2){
    noStroke();
    fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    triangle(shapex-(0.5*shaper), shapey+(0.5*shaper), shapex, shapey-(0.5*shaper), shapex+(0.5*shaper), shapey+(0.5*shaper));
    }
    
  }
}
Wave w;
cool c;
int x;
int y;
int r;
void setup(){
  size(400, 400);
  w = new Wave();
  c = new cool();
  x = 0;
  y=0;
  background(0);
  r = 3;
}

void draw(){
  
 //w.show();
 //w.move();
while(y<410){
while(x<410){
 c.make(x, y, r);
 x+=r;
}

y+=r;
x=0;
}

x=0;
y=0;
}

void keyPressed(){
  r++;
}

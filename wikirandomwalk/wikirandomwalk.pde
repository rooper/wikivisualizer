PFont f;  
String lines[];
String title;
float wait;

int complexity;
int x0 = 250;
int y0 = 250;
int xsig;
int ysig;
int change;
  
void setup() {
  size(640,480);
  f = createFont("Arial",20,true);
  lines = loadStrings("http://en.wikipedia.org/wiki/Special:Random");

title = lines[3];
title = (split(title, ">")[1]);
title = (split(title, "-")[0]); 
wait = random(0,100);
background(0);
complexity = lines.length;


change = (100-(complexity/10))/3;
}

void draw() 
{
  
  strokeWeight(random(1,4));
  stroke(random(100,255));
  xsig = x0 + (int)random(-change,change);
  ysig = y0 + (int)random(-change,change);
  if(xsig < 0 & xsig > 250 & ysig < 0 & ysig >250){
  }
  else{
    line(x0, y0, xsig, ysig);
    x0 = xsig;
    y0 = ysig;
    float g = random(0,100);
    if (g <= 2)
    {
      float h = random(10,50); 
      fill(0,random(0,50),random(0,255),150);
      strokeWeight(1);
      ellipse(x0, y0, h, h);

    }
  }
  
  strokeWeight(1);
  stroke(200);
  textFont(f,20);           
  fill(100);
  rect(0,0,700,26);
  fill(255);
  text(title ,10, 20);
  
}

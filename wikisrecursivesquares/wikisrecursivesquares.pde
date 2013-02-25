PFont f;  
String lines[];
String title;

void piet(int x0, int y0, int x1, int y1, int N) {
 if (N == 0) {

 int sw = 1;
 color c[] = { #0000aa, #005500, #0033aa, #0022cc, #9900ff }; 
 fill(c[int(random(c.length))]);
 strokeWeight(sw);
 rect (x0,y0,x1-x0-sw,y1-y0-sw);
 } else {
 int i = int(random(x0,x1)); 
 int j = int(random(y0,y1));
 piet(x0,y0,i,j,N-1);
 piet(i,y0,x1,j,N-1); 
 piet(x0,j,i,y1,N-1);
 piet(i,j,x1,y1,N-1); 
 }
}

void draw() {
}

void keyPressed() { 
   setup();
}


//Draw the first image
void setup() {
 size(400,400);
  f = createFont("Arial",20,true);
  lines = loadStrings("http://en.wikipedia.org/wiki/Special:Random");
  int c = floor(lines.length/200);
  piet(1,1,400,400, c);
  strokeWeight(1);
  stroke(200);
  textFont(f,20);           
  fill(100);
  rect(0,0,700,26);
  fill(255);
  title = lines[3];
  title = (split(title, ">")[1]);
  title = (split(title, "-")[0]); 
  text(title ,10, 20);
}

float x = 375;
float y = 375;
float s = 375;
int rad = 20;        // Width of the shape
float xpos, ypos;    // Starting position of shape    

float xspeed = 2.8;  // Speed of the shape
float yspeed = 2.2;  // Speed of the shape

int xdirection = 1;  // Left or Right
int ydirection = -1;  // Top to Bottom


void setup() { // kører 1 gang ved start
  size(750, 750);
  frameRate(60);
  ellipseMode(RADIUS);
  // Set the starting position of the shape
  xpos = width/2;
  ypos = height/2;
  
}
void draw(){ // kører default 30 gange per sek
background(255,255,255);

s= s-1;

   noFill();
   rectMode(CENTER);
   rect(x, y, s, s);
   println(xpos, ypos);
   println(ydirection);
   
   noFill();
  xpos = xpos + ( xspeed * xdirection );
  //750/2 = 750 + (2.8 * 1);
  ypos = ypos + ( yspeed * ydirection );
  //  375 + (2.2 * 1) = 377,2 
  
  if (xpos+10 > 375+s/2) {
    xdirection = -1;
  }
    if (xpos-10 < 375-s/2) {
    xdirection = 1;
  }
  if (ypos+10 > 375+s/2) {
    ydirection = -1;
  }
    if (ypos-10 < 375-s/2) {
    ydirection = +1;
  }

  // Draw the shape
  rect(xpos, ypos, rad, rad);
  
}

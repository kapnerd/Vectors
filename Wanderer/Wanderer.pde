//declare variables
float diam;
PVector loc;
PVector vel;
PVector a;

void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  loc = new PVector(width/2, height/2);
  vel = PVector.random2D();
  diam = 80;

  colorMode(HSB,360,100,100,100);
  noStroke();
}

void draw() {
  fill(frameCount%360, 180, 360);

  a = PVector.random2D();
  a.mult(.1);

  //draw ball
  ellipse(loc.x, loc.y, diam, diam);

  vel.add(a);
  vel.limit(5);

  //add velocity to position
  loc.add(vel);

  //wrap the ball's position
  if (loc.x>= width) {
    loc.x = 0;
  } else if (loc.x <= 0) {
    loc.x = width;
  }
  if (loc.y >= height) {
    loc.y =0;
  } else if (loc.y  <= 0) {
    loc.y = height;
  }
}
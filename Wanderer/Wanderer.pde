//declare variables
float diam;
PVector loc;
PVector vel;

void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  loc = new PVector(width/2, height/2);
  diam = 80;
}

void draw() {
  vel = new PVector(random(-5,5),random(-5,5));

  //draw ball
  ellipse(loc.x, loc.y, diam, diam);

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
int count = 0;

void setup() {
  frameRate(60);
  size(600,600);
  background(255);
  strokeWeight(8);
  //fill(150,0,0);
}

void draw() {
  background(255);
  if(count < 120) count++;
  pushMatrix(); 
  translate(width/2, height/2);
  rotate(-radians(count/4));
  stroke(0); 
  line(0, 0, 0, 30);
  stroke(150,0,0); 
  ellipse(0,30, 10, 10);
  translate(0, 30);
  stroke(0);
  rotate(-radians(count/2));
  line(0, 0, 0, 60);
  stroke(150,0,0); 
  ellipse(0,60, 10, 10);
  popMatrix();
}
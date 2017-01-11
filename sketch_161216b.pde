

// y = 5x

//x = 5t
// y = 3t * 3

float t;

void setup() {
  size(500, 500);
  background(20);
}

void draw() {
  background(20);
  stroke(255);
  strokeWeight(5);
  
  translate(width/2, height/2);
  
  line(x1(t), y1(t), x2(t), y2(t));
  t++;
}

void keyPressed() {
  if (key == 'q') {
    endRecord();
    exit();
  }
}

float x1(float t) {
  return tan(t * 3) * 100 + sin(t /4);
}

float y1(float t) {
  return sin(t / 7) * 100 + cos(t / 2);
}

float x2(float t) {
  return tan(t * 3) * 100 + sin(t / 4);
}

float y2(float t) {
  return sin(t / 4) * 100 + cos(t / 9);
}
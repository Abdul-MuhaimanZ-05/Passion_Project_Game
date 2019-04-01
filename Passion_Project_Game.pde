/*
game for practice
 
 music 
 images, explosion, sound 
 highscore, 2D, goku as a character 
 optional : levels difficulty
 health
 optional : power Bar
 customization
 shop
 unlok different items
 views sideways instead of upside down
 enemy convert 
 optional : big Boss
 */
// datatype for image
PImage image;
// data type for position
PVector pos;
//code for image
//PVector posEllipse;
void setup() {
  size(1200, 700);
  image = loadImage("GokuImages.png");
  imageMode(CENTER);
  //Pvector
  // position of the image 
  pos=new PVector(width/2, height/2);
// posEllipse= new PVector((width/2)+500,height/2);
}
void draw() {
  background(49, 90, 150, 175);
  //for the position of image
  ellipse (pos.x,pos.y, 30,30);
  //the shooting ellipse
  image(image, pos.x, pos.y);
}
void keyPressed() {
  if (keyPressed & keyCode == UP) {
    pos.y -= 3;
  }
  if (keyPressed & keyCode == DOWN) {
    pos.y += 3;
  }
  if (keyPressed & keyCode == RIGHT) {
    pos.x += 3;
  }
  if (keyPressed & keyCode == LEFT) {
    pos.x -= 3;
  }
}

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
PVector posEllipse;
//code for image
void setup() {
  size(1200, 700);
  image = loadImage("GokuImages.png");
  imageMode(CENTER);
  //Pvector
  // position of the image 
  pos=new PVector(width/2, height/2);
  
 posEllipse= new PVector((width/2),height/2);
}
void draw() {
  background(49, 90, 150, 175);
  //for the position of image
  ellipse (posEllipse.x,posEllipse.y, 60,60);
  //the shooting ellipse
  image(image, pos.x, pos.y);
  //for the ellipse 
  if ( keyCode == ENTER ) {
   posEllipse.x -=3;
  }
  if(posEllipse.x < 0){
  posEllipse.x = pos.x;
  }
}
void keyPressed() {
  if ( keyCode == UP) {
    pos.y -= 3;
    posEllipse.y -=3;
  }
  if (keyCode == DOWN) {
    pos.y += 3;
    posEllipse.y +=3;
  }
  if (keyCode == RIGHT) {
    pos.x += 3;
    posEllipse.x+=3;
  }
  if (keyCode == LEFT) {
    pos.x -= 3;
    posEllipse.x-=3;
  }
  
}

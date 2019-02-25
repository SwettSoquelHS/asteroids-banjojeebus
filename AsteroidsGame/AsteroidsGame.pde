
/* * * * * * * * * * * * * * * * * * * * * * *
 Class variable declarations here
 */
Spaceship player1;
Star[] stars;
Asteroid[] asteroids;
//Asteroid[] asteroids;
//Star[] starField;


/*
  Track User keyboard input
 */
boolean ROTATE_LEFT;  //User is pressing <-
boolean ROTATE_RIGHT; //User is pressing ->
boolean MOVE_FORWARD; //User is pressing ^ arrow
boolean SPACE_BAR;    //User is pressing space bar


/* * * * * * * * * * * * * * * * * * * * * * *
 Initialize all of your variables and game state here
 */
public void setup() {
  size(1440, 720);
  smooth();
  MOVE_FORWARD = false;
  //initialize your asteroid array and fill it

  //initialize ship
  player1 = new Spaceship(width/2.0, height/2.0, 1.0, 225.0,30);


  //initialize starfield
  stars = new Star[500];
  for (int i = 0; i < stars.length; i++) {
    float x = (float)((width + 100) * Math.random());
    float y = (float)((height+100) * Math.random());
    float s = .5;
    float a = (float)(-.5 * Math.random());
    float c = 200;


    stars[i] = new Star(x, y, s, a, c);
  }

  asteroids = new Asteroid[25];
  for (int i = 0; i < asteroids.length; i++) {
    float x = (float)((width) * Math.random());
    float y = (float)((height) * Math.random());
    float speed = 1;
    float direction = (float)(360 * Math.random());
    float radius = 15;
    float spin = 0;
    asteroids[i] = new Asteroid(x, y, speed, direction, radius,spin);
  }
}

public void draw() {
  //your code here
  background(0);
  for (int i = 0; i <500; i++) {
    stars[i].show();
    stars[i].move();
  }
  player1.show();
  player1.update();

  for (int i = 0; i < asteroids.length; i++) {
    checkOnAsteroids();
    asteroids[i].update();
    asteroids[i].show();


  }


  //Check for rotations

  //Draw Starfield first 
  //TODO: Part I

  //Check bullet collisions
  //TODO: Part III or IV - for not just leave this comment

  //TODO: Part II, Update each of the Asteroids internals

  //Check for asteroid collisions against other asteroids and alter course
  //TODO: Part III, for now keep this comment in place

  //Draw asteroids
  //TODO: Part II

  //Update spaceship
  //TODO: Part I

  //Check for ship collision agaist asteroids
  //TODO: Part II or III

  //Draw spaceship & and its bullets
  //TODO: Part I, for now just render ship
  //TODO: Part IV - we will use a new feature in Java called an ArrayList, 
  //so for now we'll just leave this comment and come back to it in a bit. 

  //Update score
  //TODO: Keep track of a score and output the score at the top right
}



/* * * * * * * * * * * * * * * * * * * * * * *
 Record relevent key presses for our game
 */
public void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      ROTATE_LEFT = true;
    } else if ( keyCode == RIGHT ) {
      ROTATE_RIGHT = true;
    } else if (keyCode == UP) {
      MOVE_FORWARD = true;
    }
  }

  //32 is spacebar
  if (keyCode == 32) {  
    SPACE_BAR = true;
  }
}



/* * * * * * * * * * * * * * * * * * * * * * *
 Record relevant key releases for our game.
 */
public void keyReleased() {  
  if (key == CODED) { 
    if (keyCode == LEFT) {
      ROTATE_LEFT = false;
    } else if ( keyCode == RIGHT ) {
      ROTATE_RIGHT = false;
    } else if (keyCode == UP) {
      MOVE_FORWARD = false;
    }
  }
  if (keyCode == 32) {
    SPACE_BAR = false;
  }
}


void checkOnAsteroids() {
  Spaceship player = player1;
  for (int i = 0; i < asteroids.length; i++) {
    Asteroid a1 = asteroids[i]; 
    for (int j = 0; j < asteroids.length; j++) {
      Asteroid a2 = asteroids[j]; 
      if (a1 != a2 && a1.collidingWith(a2)) {
        a1.direction =  (float)(360 * Math.random());
        a2.direction = (float)(360 * Math.random());
      }
      

    }
  }
}

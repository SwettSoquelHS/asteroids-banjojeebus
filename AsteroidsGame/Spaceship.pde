/*
  Spaceship class
 Should extend Mover class and implement show.
 You may add additional methods to this class, for example "rotate" and "accelerate" 
 might be useful.
 */

class Spaceship extends Mover {




  Spaceship(float x, float y, float speed, float direction,float radius) {

    this.x = x;
    this.y = y;
    this.speed = speed;
    this.direction = direction;
    myColor = 225;
    this.radius = radius;
  }

  void show() {
    if (ROTATE_LEFT)
      direction -= 4.5;
    if (ROTATE_RIGHT)
      direction += 4.5;
    if (MOVE_FORWARD == true) {
      if (speed < 5) {
        speed += 1;
      }
    } else {
      if (speed > 0) {
        speed -= 1;
      }
      if (speed < 0)
        speed = 0;
    }

    pushMatrix();
    translate(x, y);
    rotate(radians(direction));
    fill(255);
    triangle(-10, -10, -10, 10, 30, 0); 
    //gray tip
    fill(110);
    triangle(10, -5, 10, 5, 30, 0); 
    //box body
    fill(255);
    rect(-40, -10, 30, 20);
    //cockpit
    fill(50);
    rect(-20, -5, 20, 10);
    //blue wings under
    fill(0, 0, 150);
    triangle(2, 10, -27, 10, -52, 40);
    triangle(2, -10, -27, -10, -52, -40);
    //white wings
    fill(255);
    triangle(-40, -10, -10, -10, -90, -60);
    triangle(-40, 10, -10, 10, -90, 60);

    triangle(0, 10, -35, 10, -50, 30);
    triangle(0, -10, -35, -10, -50, -30);
    //yellow tips for white wings
    fill(#FAEE08);
    triangle(-80, -50, -10, -10, -90, -60);
    triangle(-80, 50, -10, 10, -90, 60);
    //blue wings
    fill(0, 0, 150);
    triangle(-10, 20, -35, 20, -60, 50);
    triangle(-10, -20, -35, -20, -60, -50);
    //flames
    fill((int)(255 * Math.random()), (int)(50 * Math.random()), 0);
    triangle(-40, -10, -40, 10, -80, -5);
    fill((int)(255 * Math.random()), 0, 0);
    triangle(-40, -10, -40, 10, -80, 5);
    fill((int)(255 * Math.random()), (int)(50 * Math.random()), 0);
    triangle(-40, -10, -40, 10, -65, 20);
    fill((int)(255 * Math.random()), 0, 0);
    triangle(-40, 10, -40, -10, -65, -20);
    //back triangle
    fill(255);
    triangle(-40, -10, -40, 10, -50, 0);
    fill(100);
    ellipse(-50, -30, 10, 8);
    ellipse(-50, 30, 10, 8);

    popMatrix();
  }
  public  void keyPressed() {
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
}

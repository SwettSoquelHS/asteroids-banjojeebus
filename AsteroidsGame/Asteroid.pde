/*
  Asteroid class
 Should extend Mover class and implement show.
 
 Initially, your asteroid may just be a simple circle or square
 but the final program should use "beginShap(), vertex(), and endShape()"
 to render the asteroid.
 */
class Asteroid extends Mover {   

  public Asteroid(float x, float y, float speed, float direction, float radius, float spin) {
    this.x = x;
    this.y = y;
    this.speed = speed;
    this.direction = direction;
    this.radius = radius;
    this.spin = spin;
  }


  void show() {

    pushMatrix();
    translate(x, y);
    rotate(radians(spin));
    fill(#905E11);
    beginShape();
    vertex(0, 30);
    vertex(20, 20);
    vertex(20, -10);
    vertex(0, -20);
    vertex(-30,-20);
    vertex(-10,30);
    
    endShape();
    //ellipse(0,0,2*radius, 2*radius);
    popMatrix();

  }
}

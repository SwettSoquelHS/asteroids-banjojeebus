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
    vertex(100, 50);
    vertex(110, 70);
    vertex(70, 80);
    vertex(70, 50);
    vertex(80,30);
    endShape();
    popMatrix();

  }
}

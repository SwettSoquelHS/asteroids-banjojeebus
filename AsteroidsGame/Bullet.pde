class Bullet extends Mover {

  public Bullet(float x, float y, float speed, float direction, float radius) {
    this.x = x;
    this.y = y;
    this.speed = speed;
    this.direction = direction;
    this.radius = radius;
    private int live = 100;
  }
}

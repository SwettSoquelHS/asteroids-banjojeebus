class Bullet extends Mover {

  public Bullet(float x, float y, float speed, float direction, float radius) {
    this.x = x;
    this.y = y;
    this.speed = speed;
    this.direction = direction;
    this.radius = radius;
    int live = 100;
  }
  
  public Bullet(){
   super.update();

  }
  public boolean isAlive(){
    return true; 
  }
  
  void show(){
    pushMatrix();
    translate(x,y);
    rect(x,y,x+10,y+20);
    popMatrix();
  }
}

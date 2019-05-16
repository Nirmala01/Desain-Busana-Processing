class Node {
  float x, y, z;
  boolean selected = false;
  
  Node(float tempX, float tempY){
    x = tempX;
    y = 0;
    z = tempY;
  }
  void display(){
    fill(0);
    scale(10);
    point(x,z);
  }
}

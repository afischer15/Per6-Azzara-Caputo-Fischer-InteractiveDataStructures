public class Node {
  private int data, count; 
  private float xcor, ycor, textRotate;
  private color NColor;

  public void drawNode() {
    ellipse(xcor, ycor, 30, 30);
    fill(NColor);
    pushMatrix();
    textSize(14);
    text(data, xcor, ycor+5);
    textSize(9);
    text(count, xcor+7, ycor+13);
    textSize(14);
    translate(xcor, ycor+5);
    rotate(textRotate);
    popMatrix();
    fill(255);
  }

  public Node(int data) {
    this.data = data;
    this.count = 1;
  }

  public void incrementCount() {
    this.count++;
  }

  public String toString() {
    return ""+data;
  }
  public void setData(int d) {
    data = d;
  }
  public int getData() {
    return data;
  }
  public void setNodeXY(float x, float y) {
    xcor = x;
    ycor = y;
  }
  public void setTR(float r) {
    textRotate = r;
  }
  public void setNodeColor(color c) {
    NColor = c;
  }
}


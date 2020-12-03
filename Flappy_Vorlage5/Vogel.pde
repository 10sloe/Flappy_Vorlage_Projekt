class Vogel {

  // Attribute
  private float x;
  private float y;
  private float v;
  private float radius;

  // Konstruktor
  Vogel(float x_, float y_)
  {
    x = x_;
    y = y_;
    v = 0;
    radius = 10;
  }

  // Methoden

  void bewegen()
  {
    y = y + v;
    v = v + 0.1;
  }

  void zeichnen()
  {
    fill(255, 255, 0);
    circle(x, y, 2*radius);
  }
  
  void flattern()
  {
    v = -6;
  }
  
  float getX()
  {
    return x;
  }
  float getY()
  {
    return y;
  }
}

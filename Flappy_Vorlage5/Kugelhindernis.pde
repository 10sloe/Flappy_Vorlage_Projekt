class Kugelhindernis {

  // Attribute
  private float x;
  private float y;
  private float v;
  private float radius;

  // Konstruktor
  Kugelhindernis(float x_, float y_, float radius_)
  {
    x = x_;
    y = y_;
    radius = radius_;
    v = -2;
  }

  // Methoden

  void bewegen()
  {
    x = x + v;
    if (x < 0)
    {
      x = 600;
    }
  }

  void zeichnen()
  {
    fill(255, 0, 0);
    ellipse(x,y,radius,radius);
  }
  


  
  boolean enthaelt(float x_vogel, float y_vogel)
  {
    return false;
      
  }
  
}

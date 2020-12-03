class Hindernis {

  // Attribute
  private float x;
  private float y;
  private float v;
  private float hoehe;
  private float breite;

  // Konstruktor
  Hindernis(float x_, float y_, float hoehe_)
  {
    x = x_;
    y = y_;
    hoehe = hoehe_;
    breite = 20;
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
    fill(0, 255, 0);
    rect(x,y,breite,hoehe);
  }
  
  float getX()
  {
    return x;
  }
  float getY()
  {
    return y;
  }
  float getBreite()
  {
    return breite;
  }
  float getHoehe()
  {
    return hoehe;
  }
  
  boolean enthaelt(float x_vogel, float y_vogel)
  {
    if (x_vogel > x && x_vogel < x + breite)
    {
      if (y_vogel> y && y_vogel < y + hoehe)
      {
        return true;
      }
    }
    return false;
      
  }
  
}

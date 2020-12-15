Vogel vogel;
Hindernis h1;
Kugelhindernis h2;
boolean laufend; // gibt an ob das Spiel gerade läuft 

void setup()
{
  size(600, 400);
  vogel = new Vogel(100, 200); 
  h1 = new Hindernis(500, 50, 150);
  h2 = new Kugelhindernis(400,250,50);
  laufend = true; 
  textSize(32);
}

void draw()
{
  if (laufend)
  {
     // Alles bewegen
     vogel.bewegen(); 
     h1.bewegen();
     h2.bewegen();
  
    
    //Alles zeichnen
    background(255);
    vogel.zeichnen();
    h1.zeichnen();
    h2.zeichnen();
    
    // Kommt es zu Zusammenstoessen
    if (h1.enthaelt(vogel.getX(), vogel.getY()))
    {
      // Vogel ist mit dem Hindernis 1 zusammengestossen
        laufend = false;
        text("Game over",200,200);
    }
       
    if (h2.enthaelt(vogel.getX(), vogel.getY()))
    {
      // Vogel ist mit dem Hindernis 2 zusammengestossen
        laufend = false;
        text("Game over",200,200);
    }
  }
}

void mousePressed()
{
  vogel.flattern();
}

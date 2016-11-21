PVector pos = new PVector(width/2,height/2);

coso [] cosito = new coso[40]  ; 

void setup() {
  size(800,600);
  for (int l=0; l<cosito.length; l++){
    cosito[l] = new coso();
  }
  colorMode(HSB);
 
}
 
void draw() {
  //background(255);
  //println(lolo.mag()); 
  for(int l = 0; l<cosito.length; l++){
     cosito[l].changecolor();
     cosito[l].display();
     cosito[l].update();
     cosito[l].checkEdges();
  }
  
  saveFrame("img/####.png");
}
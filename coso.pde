class coso{
  PVector pos;
  PVector speed;
  PVector accel = new PVector(-0.001,0.001); //aceleración. 
 
  float hue = 0;
  float topspeed = 4.2;
 coso(){
   pos = new PVector(random(width),random(height));
   speed = new PVector(1,1);
 }
 
 //Update setea nuevamente la posicion agregandole la velocidad
 //Creo que update es un buen nombre

 void display(){
  
  stroke(hue+30,220,220,100);
  fill(hue,220,150,50);
  ellipse(pos.x,pos.y,30,30);
 }
 
 void changecolor(){
   hue+= 1;
   if (hue > 255) {
   hue = 0;
   }
 }
 void acelerate(){  
    //accel.add(0.000001,0.000001);
    //colorMode(HSB);
    accel = PVector.random2D();
    //accel.mult(0.2);
    speed.add(accel); 
    speed.limit(topspeed);
    println("speed.x",speed.x);
    println("speed.y",speed.y);
 }
 
 void update(){
   //acelerate();
  
   PVector mouse = new PVector(mouseX,mouseY);
   PVector dir = PVector.sub(mouse,pos);
   
   dir.normalize();
   dir.mult(1);
  
   accel = dir ;
   PVector Rdm = PVector.random2D();
   Rdm.mult(1);
   accel.add(Rdm);
   speed.add(accel); 
   speed.limit(topspeed);
   pos.add(speed);
    //println("pos.x",pos.x);
    //println("pos.y",pos.y);
 }
 //checkear bordes , también es un mejor nombre
void checkEdges(){ 
   if (pos.x >= width){
     pos.x = 0;
   } 
   else if (pos.x <= 0 ){
     pos.x = width;  
   }
   if (pos.y >= height){
    pos.y = 0; 
   }
   else if (pos.y <= 0){
    pos.y = height; 
   }
  }
}
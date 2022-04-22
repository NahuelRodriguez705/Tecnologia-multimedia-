//Rodriguez Pablo
//Legajo: 88145/4

void setup(){
size(400,400);

}

void draw (){
  background(250,0,0);

//cabeza
  fill(238,208,157);
  rect(100,80,200,280,30);
  
 //cabello
  fill(0);
  triangle(90,80,100,200,115,80);
  triangle(280,80,300,200,305,80);
  rect(90,30,215,60,10);
  
 //nariz
  strokeWeight(5);
  line(200,200,200,240);
  
  
 //boca
  line(175,300,225,300);
  line(225,300,235,295);
  
 //ojos
  fill(250);
  ellipse(155,160,60,60);
  ellipse(245,160,60,60);
 
 //iris de los ojos
  fill(0);
  ellipse(155,160,20,20);
  ellipse(245,160,20,20);
 
 //cejas
  line(130,115,180,115);
  line(220,115,270,115);
}

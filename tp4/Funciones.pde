
void dibujaBoton(String letra, int x, int y, int tam1, int tam2){
  pushStyle();
  pushMatrix();
  translate(x,y);
  fill(255,0,0);
  rectMode(CENTER);
  rect(0,0, tam1, tam2);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize (12);
  text( letra, 0, 0);
  popMatrix();
  popStyle();
  
}
void dibujatexto(String historia, int a, int b){
   pushStyle();
  pushMatrix();
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(16);
  text( historia, a , b );
  popMatrix();
  popStyle();
  
}

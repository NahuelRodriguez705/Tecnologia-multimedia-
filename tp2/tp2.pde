//https://youtu.be/QVgX-bxI8p8
//Pablo Rodriguez 
//legajo 88145/4

//variable movimiento
int x;
int mov1;
int mov2;
int mov3;

// variable de sacar fondo
int ejemp= 0;

void setup(){
  size (600,400);
 
//variables movimiento
  x = 0;
  mov1 = 2;
  mov2 = -2;
  mov3 = 2;
 
}

void draw(){  
  x = x + mov1;
  
 //fondo blanco y negro
    for ( int a = 0 ; a < 30; a++){
  rect ( a*600/30,0,60,400);
 if ( a % 2 == 0 ){ fill (ejemp);}
  else {fill (255);}
  }
  
 // rectangulos que se mueven 
  noStroke();
  fill (225);
  rect( x, 125, 80 , 40);
  fill (0);
  rect( x, 225, 80 , 40);
 
  if ( x > 520){ x = 520; }
  if ( x == 520){ mov1 = mov2;}
  if ( x == 0){ mov1 = mov3;}
  
}

void mousePressed(){ ejemp = 255 ; }
void mouseReleased(){ ejemp = 0 ; }


 

 
 
 
 

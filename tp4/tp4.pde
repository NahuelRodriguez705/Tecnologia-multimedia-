//Pablo Rodriguez
//legajo: 88145/4
//video de youtube:  https://youtu.be/wf1GY7nwvGE

int pantalla;
int ejemp;

//textos


// imagenes
PImage foto_1;
PImage foto_2;
PImage foto_3;
PImage foto_4;
PImage foto_5;
PImage foto_6;
PImage foto_7;
PImage foto_8;
PImage foto_9;
PImage foto_10;
PImage foto_11;
PImage foto_12;
PImage foto_13;
PImage foto_14;
PImage foto_15;
PImage foto_16;
PImage foto_17;


void setup(){
  size (600,400);
  
  pantalla = 0;  
  ejemp= 0;

 
// carga de imagenes
  foto_1 = loadImage("despertar.jpg");
  foto_2 = loadImage("TV.jpg");
  foto_3 = loadImage("cocina.jpg");
  foto_4 = loadImage("Comida.jpg");
  foto_5 = loadImage("kiosco.jpg");
  foto_6 = loadImage("ruido.jpg");
  foto_7 = loadImage("abrir.jpg");
  foto_8 = loadImage("zombie.jpg");
  foto_9 = loadImage("calles.jpg");
  foto_10 = loadImage("comprar.jpg");
  foto_11 = loadImage("dueño.jpg");
  foto_12 = loadImage("estado.jpg");
  foto_13 = loadImage("mordida.jpg");
  foto_14 = loadImage("sorpresa.jpg");
  foto_15 = loadImage("forsejeo.jpg");
  foto_16 = loadImage("salvada.jpg");
  foto_17 = loadImage("sobrevivir.jpg");
  
}

void draw(){
  background (255);
  
  if ( pantalla == 0){ 
    background(255);
    
 //fondo blanco y negro
  for ( int a = 0 ; a < 30; a++){
  rect ( a*600/30,0,60,400);
  if ( a % 2 == 0 ){ fill (ejemp);}
    else {fill (255);}
  }
      
    dibujaBoton("Iniciar aventura", width/2, 350, 100,50);
     
    //titulo// 
     
    pushStyle();
    pushMatrix();
    fill(255,0,0);
    textAlign(CENTER, CENTER);
    textSize(60);
    text("Aventura Gráfica", width/2,100);
    popMatrix();
    popStyle();
    
    //////////////        Primer camino    ///////////
    
  } else if ( pantalla == 1){     
    image(foto_1 , 0 , 0 ,width, height);
    dibujaBoton("siguiente", width/2, 350, 100,50);
    dibujatexto("Era una mañana como cualquier otra, Carlos se despertaba..", width/2, 50);
    
  } else if ( pantalla == 2){
    image(foto_2 , 300 , 0 , width/2, height);
    image(foto_3 , 0 , 0 ,  width/2, height);
    dibujaBoton("Encender TV", 500, 350, 100,50);
    dibujaBoton("Ir a la cocina", 100, 350, 100,50);
    dibujatexto("¿Que debería hacer Carlos?", width/2, 50);
   
  }  else if ( pantalla == 3){
    image(foto_2 , 0 , 0 , width, height);
    dibujaBoton("Volver a dormir", width/2, 350, 100,50);
    dibujatexto("La TV no recibiría señal por lo que Carlos volvería a dormir", width/2, 50);
    
  } else if (pantalla == 4){
    pantalla = 0;
 
   //////////////        segundo camino    ///////////
   
  } else if (pantalla == 5){
    image(foto_3 , 0 , 0 ,  width, height);
    dibujaBoton("Siguiente", width/2, 350, 100,50);
    dibujatexto("Carlos tendría hambre por lo que habría 2 opciones..", width/2, 50);
    
  } else if (pantalla == 6){
    image(foto_4 , 300 , 0 , width/2, height);
    image(foto_5 , 0 , 0 ,  width/2, height);
    dibujaBoton("Cocinar", 500, 350, 100,50);
    dibujaBoton("Ir al kiosco", 100, 350, 100,50);
    
  } else if (pantalla == 7){
    image(foto_6 , 0 , 0 ,  width, height);
    dibujaBoton("siguiente", width/2, 350, 100,50);
    dibujatexto("Escucharia un ruido que viene de la puerta y iría a verificar", width/2, 50);
    
  } else if (pantalla == 8){
    image(foto_7 , 0 , 0 , width, height);
    dibujaBoton("siguiente", width/2, 350, 100,50);
    dibujatexto("Como nadie respondia decide abrir la puerta", width/2, 50);
    
  } else if (pantalla == 9){
    image(foto_8 , 0 , 0 , width,height);
    dibujaBoton("Volver inicio", width/2, 350, 100,50);
    dibujatexto("Para su sorpresa seria un zombie, sin darle tiempo a nada se lo comería", width/2, 50);
  
  //////////////        tercer camino    ///////////
  
  } else if (pantalla == 10){
    image(foto_9 , 0 , 0 ,  width, height);
    dibujaBoton("siguiente", width/2, 350, 100,50);
    dibujatexto("Mientras se dirigía al kiosco, observo que las calles estaban desiertas", width/2, 50);
    
  } else if (pantalla == 11){
    image(foto_10 , 0 , 0 ,  width, height);
    dibujaBoton("siguiente", width/2, 350, 100,50);
    dibujatexto("Tomaria un par de cosas pero no habría nadie que le cobre", width/2, 50);
    
  } else if (pantalla == 12){
    image(foto_11 , 300 , 0 , width/2, height);
    image(foto_11 , 0 , 0 ,  width/2, height);
    dibujaBoton("acercarse", 500, 350, 100,50);
    dibujaBoton("preguntar", 100, 350, 100,50);
    dibujatexto("Encontraría al dueño en la parte de atras con un aura un poco rara", width/2, 50);
    dibujatexto("¿Que debería hacer?", width/2, 70);
    
  } else if (pantalla == 13){
    image(foto_12 , 0 , 0 ,  width, height);
    dibujaBoton("siguiente", width/2, 350, 100,50);
    dibujatexto("Se acercaría para preguntarle si se encuentra bien..", width/2, 50);
    
  } else if (pantalla == 14){
    image(foto_13 , 0 , 0 ,  width, height);
    dibujaBoton("Volver inicio", width/2, 350, 100,50);
    dibujatexto("Pero es sorprendido ya que estaba convertido en zombie", width/2, 50);
    dibujatexto("Por desgracia lo mordería y moriría", width/2, 70);
    
  //////////////        cuarto camino    ///////////
  
  } else if (pantalla == 15){
    image(foto_14, 0 , 0 ,  width, height);
    dibujaBoton("siguiente", width/2, 350, 100,50);
    dibujatexto("Sin acercarse le preguntaría si esta bien, el dueño convertido en zombie ", width/2, 50);
    dibujatexto("se daria vuelta y lo perseguiría", width/2, 70);
    
  } else if (pantalla == 16){
    image(foto_15, 0 , 0 ,  width, height);
    dibujaBoton("siguiente", width/2, 350, 100,50);
    dibujatexto("El zombie se abalanzaría sobre Carlos y empezaía un forsejeo ", width/2, 50);
    
  } else if (pantalla == 17){
    image(foto_16, 0 , 0 ,  width, height);
    dibujaBoton("siguiente", width/2, 350, 100,50);
    dibujatexto("Para suerte de Carlos un grupo de personas lo ayudaría", width/2, 50);
    
  } else if (pantalla == 18){
    image(foto_17, 0 , 0 ,  width, height);
    dibujaBoton("Volver a inicio", width/2, 350, 100,50);
    dibujatexto("El grupo le contaría lo que esta sucediendo y este se quedaría con ellos", width/2, 50);
    dibujatexto("para poder sobrevivir al apocalipsis ZOMBIE", width/2, 70);
  }
  
}


void mousePressed(){
  //////////////        Primer camino    ///////////
  
 if ( pantalla == 0 && mouseX > 250 && mouseX < 350 && mouseY > 325 && mouseY < 375 ){       
    pantalla = 1;
     
  } else if (pantalla == 1 && mouseX > 250 && mouseX < 350 && mouseY > 325 && mouseY < 375){
    pantalla = 2;
   
  } else if (pantalla == 2 && mouseX > 450 && mouseX < 550 && mouseY > 325 && mouseY < 375){
    pantalla = 3;
    
  } else if (pantalla == 3 && mouseX > 250 && mouseX < 350 && mouseY > 325 && mouseY < 375){
    pantalla = 4;
  
  //////////////        segundo camino    ///////////
  
  } else if (pantalla == 2 && mouseX > 50 && mouseX < 325 && mouseY > 325 && mouseY < 375){
    pantalla = 5;
    
  } else if (pantalla == 5 && mouseX > 250 && mouseX < 350 && mouseY > 325 && mouseY < 375){
    pantalla = 6;
    
  } else if (pantalla == 6 && mouseX > 450 && mouseX < 550 && mouseY > 325 && mouseY < 375){
    pantalla = 7;
    
  } else if (pantalla == 7 && mouseX > 250 && mouseX < 350 && mouseY > 325 && mouseY < 375){
    pantalla = 8;
    
  } else if (pantalla == 8 && mouseX > 250 && mouseX < 350 && mouseY > 325 && mouseY < 375){
    pantalla = 9;
    
  } else if (pantalla == 9 && mouseX > 250 && mouseX < 350 && mouseY > 325 && mouseY < 375){
    pantalla = 0;
    
    //////////////        tercer camino    ///////////
    
  } else if (pantalla == 6 && mouseX > 50 && mouseX < 325 && mouseY > 325 && mouseY < 375){
    pantalla = 10;
    
  } else if (pantalla == 10 && mouseX > 250 && mouseX < 350 && mouseY > 325 && mouseY < 375){
    pantalla = 11;
    
  } else if (pantalla == 11 && mouseX > 250 && mouseX < 350 && mouseY > 325 && mouseY < 375){
    pantalla = 12;
    
  } else if (pantalla == 12 && mouseX > 450 && mouseX < 550 && mouseY > 325 && mouseY < 375){
    pantalla = 13;
    
  } else if (pantalla == 13 && mouseX > 250 && mouseX < 350 && mouseY > 325 && mouseY < 375){
    pantalla = 14;
    
  } else if (pantalla == 14 && mouseX > 250 && mouseX < 350 && mouseY > 325 && mouseY < 375){
    pantalla = 0;
    
    //////////////        cuarto camino    ///////////
    
  } else if (pantalla == 12 && mouseX > 50 && mouseX < 325 && mouseY > 325 && mouseY < 375){
    pantalla = 15;
    
  } else if (pantalla == 15 && mouseX > 250 && mouseX < 350 && mouseY > 325 && mouseY < 375 ){       
    pantalla = 16;
    
  } else if (pantalla == 16 && mouseX > 250 && mouseX < 350 && mouseY > 325 && mouseY < 375 ){       
    pantalla = 17;
    
  } else if (pantalla == 17 && mouseX > 250 && mouseX < 350 && mouseY > 325 && mouseY < 375 ){       
    pantalla = 18;
    
  } else if (pantalla == 18 && mouseX > 250 && mouseX < 350 && mouseY > 325 && mouseY < 375 ){       
    pantalla = 0;
    
  }

}

//Pablo Rodriguez
//legajo: 88145/4
//https://youtu.be/88IgZo2YOOE

//Hola profe lo que implementamos en grupo fue un boton para reiniciar el juego, lo que hicimos fue
//utilizar un void keypressed junto a un if que cuando "Jugar" sea igual a 1 todas las variables tengan
//su valor inicial lo cual asi se puede llegar a reiniciar el juego al utilizar la tecla ENTER.
//Luego tuvimos problemas con el tiempo ya que no se reiniciaba, lo que se implementó fue una variable 
//tiempoInicio donde en vez de sumar se restaba a los "millis" pero aun asi no funcionaba por lo que
//faltaba agregarle un valor en el if del void keypressed, haciendo que la variable tiempoInicio tenga 
//el mismo valor que "millis". 


int Jugar;
int Repintar;
int Volumen;
int Puntos;
int PosX;
int PosY;
int tiempoInicio;


void setup() {
  size(600, 400);
  background(0);


  Jugar     = 2;
  Repintar  = 1;
  Volumen   = 35;
  Puntos    = 0;
  PosX      = 0;
  PosY      = 0;

}

void draw() {  
 
  if (  Jugar == 2 && Repintar == 1 ) {
    DibujarFormas();
     
   }
 }

 void mouseClicked() {
  if (Jugar == 2) {
    if (Repintar == 0) {
      Repintar = 1;
    }
    if (mouseX > PosX - Volumen && mouseX < PosX + Volumen && mouseY > PosY - Volumen && mouseY < PosY + Volumen) {
      Puntos += 1;
    } else {
      Jugar = 1;
      
      background(0);
      fill(255, 0, 0);
      textAlign(CENTER);
      text("Presione ENTER para volver a jugar",300,300);
      text( Puntos + " puntos en " + millis()/1000 + " segundos", 300, 220);
      textSize(70);
      text("GAME OVER",300,150);
    
    }
  }
}
void keyPressed() {
  if (Jugar == 1 && keyCode == ENTER) {
    Jugar    = 2;
    Repintar  = 1;
    Volumen  = 35;
    Puntos   = 0;
    PosX     = 0;
    PosY     = 0;
    tiempoInicio = millis();
    
  }
}

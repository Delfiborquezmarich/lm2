PImage fondo;
int estado;
PImage personaje;
PImage arcoirisbueno;
PImage arcoirismalo;
float posX;
float posY;
PFont unicornF;
PFont deco;
float [] ab = new float [4];
float [] am = new float [4];
float posY2;
float vel;
void setup () {

  size (600, 600);

  fondo = loadImage ("Fondo rosa.png");
  personaje = loadImage ("Unicornio.png");
  arcoirisbueno = loadImage ("ab.png");
  arcoirismalo= loadImage ("am.png");
  posX= random (50, 550);
  posY= random (-200,0);
  posY2=random (-200,0);
  unicornF= createFont ("Unicorn Magic.ttf", 20);
  deco= createFont ("Deco.otf", 60);

  ab [0] = random (0, 200);
  ab [1] = random (300, 450);
  ab [2]= random (0, width);
  ab [3]= random (500, 600);

  am [0]= random (0, width);
  am [1]= random (100, 250);
  am [2]= random (350, 500);
  am [3]= random (0, width);

}

void draw() {
  if (estado==0) {
    nombrejuego ();
  } else if  (estado==1) {
    instrucciones();
  } 
  if (key==ENTER){  
  estado++;
 juego();}
}


void mouseClicked () {
  estado++;
}
void juego () {
  imageMode(CORNER);
  image (fondo, 0, 0);
  imageMode(CENTER);
  image (personaje, mouseX, 500);

  arcoiris(random (1, 3));
}

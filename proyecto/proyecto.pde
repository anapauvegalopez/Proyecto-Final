//Variables
int numero = 1;
int J1=0;
int J2=0;
int x=70, y=550, w=120, h=30;
PImage fondo;
PImage ciudad;
PImage respuesta;

int vida1 = 100, vida2 = 100;

//clases
Flujo cambio;

class Flujo{

void pantallas(){
  switch (numero){
  
  case 1:
  PInicio();
  break;
  
  case 2:
  Pinstrucciones();
  break;
  
  case 3:
  Ppersonajes();
  break;
  
  
  case 4:
  Pjuego(); 
  break;
  
  
 case 5: 
  Pganador();
  break;
  
  }

}

//----------------------------------------------------------- el número que corresponde de cada pantalla
void PInicio(){
  background(#BDFF17);
  image(ciudad,0,0);
  PFont font;
  font=loadFont("AgencyFB-Bold-120.vlw"); 
  fill(#BDFF17);
  textFont(font,120);
  text ("Ninjemys", 220, 150);
  textFont(font,50);
  text ("Presiona 1 para continuar", 200,500);
  
  if (keyPressed)
    if (key== '1')
    numero ++;  
}

void Pinstrucciones(){
   background(#000000);
   PFont font1;
   font1=loadFont("ArialNarrow-Bold-30.vlw");
   fill(#00FFFF);
   textFont(font1,30);
   text("Escoge a tus personajes dando click sobre ellos" ,150,100);
   text("Presiona 'a' para atacar al jugador 2"  ,210,200);
   text("Presiona 'l' para atacar al jugador 1" ,210,300);
   text("Presiona 2 para continuar",270,500);
   
   if (keyPressed)
    if (key== '2')
    numero ++;
  }
  
  
void Ppersonajes(){
    background(#000000);
   PFont font2;
   font2=loadFont("Ebrima-25.vlw");
   fill(#FF5100);
   textFont(font2,25);
   text("presiona 3 para continuar",250,500);
   
    dibujar();
 
    if (mousePressed)
    escoger(mouseX,mouseY);   
    print(J1);
    print("  ", J2);
    
    
   if (keyPressed)
    if (key== '3')
    numero ++;
}
  
void Pjuego(){
   background(200);
   image(fondo,0,0);
   //fondo();
   eleccion();
   vida();
   
   if (vida1 <=0 || vida2<=0)
    numero ++;
  }  
  
void Pganador(){
   background(#00EEBB);
   image(respuesta,0,0);
   fill(0);
   PFont font3;
   font3 =loadFont("OCRAExtended-100.vlw");
   textFont(font3,100);
   text("¡Ganador!",150,100);
   
   if(vida1<=0 ){
     
     if(J2 == 1){
       push();
       translate(210,150);
       donatello();
       pop();
       }
      if(J2 == 2){
       push();
       translate(210,200);
       splinter();
       pop();
      }
      
      if(J2 == 3){
       push();
       translate(210,150);
       leonardo();
       pop();
      }
      
       if(J2 == 4){
       push();
       translate(210,150);
       raphael();
       pop();
       }
       
       if(J2 == 5){
       push();
       translate(210,150);
       miguelangel();
       pop();
       } 
   }
   if(vida2<=0 ){
     
     if(J1 == 1){
       push();
       translate(210,150);
       donatello();
       pop();
       }
      if(J1 == 2){
       push();
       translate(210,200);
       splinter();
       pop();
      }
      
      if(J1 == 3){
       push();
       translate(210,150);
       leonardo();
       pop();
      }
      
       if(J1 == 4){
       push();
       translate(210,150);
       raphael();
       pop();
       }
       
       if(J1 == 5){
       push();
       translate(210,150);
       miguelangel();
       pop();
       } 
   }
   
   boton();
   
   if (keyPressed)
    if (key== '5')
    numero ++;
  } 
}
//------------------------------------------------------------------------------Funcion de escoger

void escoger(float x, float y){
  if(( x>50 && x<150) && (y>250 && y<400)){
       
   if(J1 == 0)
     J1=1;
  
  else
   J2=1;
 }
 
  if(( x>175 && x <275) && (y>250 && y<400)){
    
   if(J1 == 0)
     J1=2;
     else
   J2=2;
 }
   
   
  if(( x>300 && x<400) && (y>250 && y<400)){    
   if(J1 == 0)
     J1=3;
     else
     J2=3;
 }
   
  
  
  if(( x>425 && x <525) && (y>250 && y<400)){    
   if(J1 == 0)
     J1=4;
     else
     J2=4;
 }
     

  if(( x>550 && x <650) && (y>250 && y<400)){   
   if(J1 == 0)
     J1=5;
     else
     J2=5;
  } 
}
 
//--------------------------------------------- funcion de dibujar

void dibujar (){
  fill(#00FFFF);
 
  
  rect(50,250,100,150);
  rect(175,250,100,150);
  rect(300,250,100,150);
  rect(425,250,100,150);
  rect(550,250,100,150);
  
  push();
  translate(55,290);
  donatello();
  pop();
  
  push();
  translate(185,290);
  splinter();
  pop();
  
  push();
  translate(310,290);
  leonardo();
  pop();
  
  push();
  translate(430,290);
  raphael();
  pop();
  
  push();
  translate(560,290);
  miguelangel();
  pop();
}
void donatello(){
//Donatello  
   if(numero==5){
   scale(5);
   }
    fill(#47FF0A);
    noStroke();
    circle(40, 40, 80);
    fill(#BF48E8);
    rect(0,30,80,15);
    fill(#BF48E8);
    rect(80,30,15,15);
    fill(255);
    rect(22,55,35,8);
    fill(0);
    circle(20,40,10);
    fill(0);
    circle(55,40,10);
   
} 

void splinter(){
//splinter
  if(numero==5){
     scale(5);
     }
     
  push();
  translate(-85,0);
    fill(#C2B6AE);
    noStroke();
   circle(125, 40,80);
    fill(#C2B6AE);
    circle(155,5,40);
    fill(#C2B6AE);
    circle(95,5,40);
    fill(0);
    circle(110,40,10);
    fill(0);
    circle(145,40,10);
    fill(0);
    circle(128,50,10);
    fill(255);
    rect(120,60,8,10);
    fill(255);
    rect(128,60,8,10);
  pop();
}

void leonardo(){ 
//Leonardo
  if(numero==5){
   scale(5);
   }

    push();
    translate(-170,0);
    fill(#00F700);
    noStroke();
    circle(210, 40, 80);
    fill(65, 161, 249 );
    rect(170,30,80,15);
    fill(65, 161, 249);
    rect(250,30,15,15);
    fill(255);
    rect(192,55,35,8);
    fill(0);
    circle(190,40,10);
    fill(0);
    circle(230,40,10); 
    
    pop();
}  
 
void raphael(){
//Raphael
  if(numero==5){
   scale(5);
   }


     push();
    translate(-260,0);
    fill(8, 240, 0);
    noStroke();
    circle(300, 40, 80);
    fill(251, 50, 14  );
    rect(260,30,80,15);
    fill(251, 50, 14 );
    rect(340,30,15,15);
    fill(255);
    rect(282,55,35,8);
    fill(0);
    circle(280,40,10);
    fill(0);
    circle(320,40,10);
    
   pop();
}
  
void miguelangel(){   
//MiguelAngel
    if(numero==5){
     scale(5);
     }

    push();
    translate(-360,0);
    fill(8, 240, 0);
    noStroke();
    circle(400, 40, 80);
    fill(244, 160, 4);
    rect(360,30,80,15);
    fill(244, 160, 4);
    rect(440,30,15,15);
    fill(255);
    rect(382,55,35,8);
    fill(0);
    circle(380,40,10);
    fill(0);
    circle(420,40,10);  
    
    pop();
}
//-----------------------------------------------------------------------------------------------


void eleccion(){

if( J1==1){

push();
translate(100,450);
donatello();
pop();
}

if( J1==2){

push();
translate(100,450);
splinter();
pop();
}

if( J1==3){

push();
translate(100,450);
leonardo();
pop();
}


if( J1==4){

push();
translate(100,450);
raphael();
pop();
}

if( J1==5){

push();
translate(100,450);
miguelangel();
pop();
}


//J2--------------------------------------------------------------------------------------------------------------------------------------

if( J2==1){

push();
translate(400,450);
donatello();
pop();
}

if( J2==2){

push();
translate(400,450);
splinter();
pop();
}

if( J2==3){

push();
translate(400,450);
leonardo();
pop();
}


if( J2==4){

push();
translate(400,450);
raphael();
pop();
}

if( J2==5){

push();
translate(400,450);
miguelangel();
pop();
}
}
//-------------------------------------------------------------------------------------------------------------------------------------------------------------------------

void vida(){
  if(keyPressed)
  if(key=='a'){
  PFont fuente;
  fuente= loadFont("Consolas-Bold-30.vlw");
  fill(#FFFF00);
  textFont(fuente,30);
  text("¡Ataque!",200,100);
  vida2= vida2-round(random(15));
  }

  if(keyPressed)
  if(key=='l'){
  PFont fuente2;
  fuente2= loadFont("Consolas-Bold-30.vlw");
  fill(#FFFF00);
  textFont(fuente2,30);
  text("¡Ataque!",500,100);
  vida1= vida1-round(random(15));
  }
  
  fill(#FAE528);
  rect(0,20,vida1,20);
  fill(#FAE528);
  rect(700,20,vida2,20);
  
  noStroke();
  noFill();
  rect(0,20,100,20);
  rect(700,20,100,20);
}

//----------------------------------------------------------------------------------------

void boton(){

  
fill(#C2FF0A);
noStroke();
rect(x,y,w,h);


 PFont fuente;
  fuente=loadFont("OCRAExtended-20.vlw");
  fill(0);
  textFont(fuente,20);
  text("Regresar",75,570);
  
  if(mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h && mousePressed==true){
  
      numero=1;
      vida1=100;
      vida2=100;
      J1=0;
      J2=0;
  }

}

//------------------------------------------------------------------------------------------------
void setup(){
  size (800,600);
  background(255);
  cambio = new Flujo(); 
  fondo=loadImage("fondo.jpg");
  ciudad= loadImage("ciudad.jpg");
  respuesta=loadImage("pantalla.jpg");
} 


 void draw(){
 
 cambio.pantallas();
 
 
 }

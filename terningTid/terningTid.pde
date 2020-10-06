//NY NØDVENDIG VIDEN:
//1.) random
//2.) array's
//3.) funktioner med og uden returtype
//4.) funktioner med og uden input

//OPGAVE: lav arrays, variabler til at gemme terningkast og fordeling af terningekast
 //int udskrivKast = 50;
int[] kastliste = new int[30];
int kastcount = 0;
void setup() {
  size(600, 800);
  clear();
  text("TRYK på 'k' FOR AT KASTE", 50, 50);
}

void draw() {
}
int lavTerningeKast (int min , int max ){
  int kast = int(random(min,max+1));

return kast;
}
  
void udskrivKast() {
  if (kastcount != 0) {
    for (int i = 0; i < kastliste.length; i++) {
      if (kastliste[i] != 0) {
        text("Kast " + (i+1) + ": " + kastliste[i], 350, (50 + (i * 12)));
      }
    }
  }
}


void keyPressed() {
  clear();
  text("TRYK på 'k' FOR AT KASTE / OG 's' FOR AT SLETTE", 50, 50);

  if (key=='k') {
    if (kastcount < 30) {
    //OPGAVE:  lav manglende funktion der laver 'terningekast'. 
    int kast = lavTerningeKast(1, 6);
    kastliste[kastcount]= kast;
    kastcount++;
    text("DIT KAST BLEV:" + kast, 50, 75);
    }
  }

  if (key == 's') {
    //OPGAVE:  lav manglende funktion til at et terningekast
   if (kastliste[0] != 0) {
    kastliste[kastcount -1 ] = 0;
  kastliste[kastcount]--;
   }
  }
  
  //OPGAVE: lav manglende funktion til at fordelingen af terningekast. 
 // tegnFordeling();
  //OPGAVE: lav manglende funktion der kan udskrive alle terningekast som tekst ...
  udskrivKast();
 //if(kastcount> 0){
  //text(kastcount,500,udskrivKast);
  //if(key== 'k'){
    //udskrivKast = udskrivKast +10 ;
    
    
  //}
 //}


}

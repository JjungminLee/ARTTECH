PImage snowImg;  //<>//
PFont fonts;
London london;
Paris paris;
Seoul seoul;
Newyork ny;

int mouseClick=0;
float snowX,snowY=0;


void setup(){
  size(800,600);
  snowImg=loadImage("snowflake2.png");
  fonts=createFont("Lora-BoldItalic.ttf",128);
  textFont(fonts);
  london=new London();
  paris=new Paris();
  seoul=new Seoul();
  ny=new Newyork();
  
}

void draw(){
  
  if(mouseClick%4==0){
    london.drawLondon();
    snowFalling();
    
    
  }
  else if(mouseClick%4==1){
    paris.drawParis();
    snowFalling();
    
  }
  else if(mouseClick%4==2){
    seoul.drawSeoul();
    snowFalling();
    
  }
  else if(mouseClick%4==3){
    ny.drawNewyork();
    snowFalling();
    
  }
}




void mouseClicked(){
  
  mouseClick++;
  
}

void snowFalling(){
  
    //if mousePressed->snowfall
    snowY+=5;
    
    image(snowImg,snowX+200,snowY+65,width/2,height/2);
    
    
    if(snowY>height/2-150){
      snowY=0;
    }
  
}

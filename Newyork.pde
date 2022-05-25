
PImage liberty;
class Newyork{
color c1,c2;
  void setGradient(int x, int y, float w, float h, color c1, color c2) {
  
    noFill();
  
    for (int i = y; i <= y+h; i++) {
        float inter = map(i, y, y+h, 0, 1);
        color c = lerpColor(c1, c2, inter);
        stroke(c);
        line(x, i, x+w, i);
     }
  }
  
  
  
  public Newyork(){
   
    
    c1=color(#81CBA8);
    c2=color(#FFC3B4);
    liberty=loadImage("liberty.png");
    
    
    
    
  }
  
  void drawNewyork(){
    //linear gradient sky
    
    setGradient(0,0, width, height, c1, c2);
    
    
    
    //snowball
    //ellipse
    noStroke();
    fill(#D6F4FF);
    
    ellipse(width/2-10,height/2-3,570,563);
    fill(255,150);
    noStroke();
    bezier(158,227,128,270,240,182,229,88);
    
    
    //buildings
    buildings();
    noStroke();
    
    //empire state building 
    empireState();
    
  
    
    //statue of liberty 
    image(liberty,203,171,width/2,height/2);
    noStroke();
    //snow land
    fill(255,255,255);
    bezier(578,515,556,472,339,410,200,517);
    bezier(203,514,254,439,252,419,463,488);
    bezier(312,499,487,458,461,415,577,513);
    
     //quad
    
    fill(#FFB2E4);
    quad(205, 509, 574, 509, 640, 614, 143, 604);
    
    //button
    fill(#F53495);
    textSize(64);
    text("Newyork",width/2-140,height/2+279);
    
    
    
    
  }
  void buildings(){
  
    fill(#99dbee);
    rect(449,176,107,327);
    
    fill(#6c8dd0);
    triangle(556,521,503,175,452,477);
    
    fill(#99dbee);
    quad(454,152,467,178,537,183,550,152);
    
    
    strokeWeight(5);
    stroke(#ED97A1);
    line(500,149,500,86);
    
    noStroke();
    fill(#F5F7F7,100);
    for(int i=0;i<20;i++){
      
      rect(449,192+16*i,107,-2);
    }
    
    fill(#0e0c0c,100);
    rect(357,195,56,260);
    rect(411,264,38,192);
  }
  
  void empireState(){
  
    //mid
    fill(#afa089);
    rect(344,121,-95,365);
    
    //window
    fill(#ABB4BF);
    rect(305,163,-13,305);
    
    //left
    fill(#DBDBD7);
    rect(281,163,-50,331);
    
    //window
    fill(#ABB4BF);
    rect(237,171,8,368);
    
    for(int i=0;i<21;i++){
      
      rect(253,171+25*i,16,16);
    }
    
    //right
    fill(#DBDBD7);
    rect(364,163,-50,308);
    
    //window
    fill(#ABB4BF);
    rect(353,171,8,368);
    
    for(int i=0;i<21;i++){
      
      rect(325,171+25*i,16,16);
    }
    
    fill(#687f9b);
    
    for(int i=0;i<4;i++){
      rect(261+20*i,132,14,20);
    }
    
    //top
    fill(#ac998a);
    rect(332,102,-71,20);
    
    fill(#96b1d2);
    rect(320,88,-50,15,7);
    stroke(#94abc7);
    strokeWeight(4);
    line(295,90,296,55);
    
   }
}

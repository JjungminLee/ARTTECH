PImage PLImage;
float add=0;
color []ferrisColor={#9BDB92,#FFE790,#FF90CB,#5DA7FF,#FCA1AD,#CDA1FC,#CDA1FC,#A1FCE2,#BEC0F7};
class London{
  
  
  
  color c1,c2;
  float rotate=0;
  
  class Ferris{
    
    float x;
    float y;
    int idx;
    public Ferris(float x,float y,int idx){
       this.x=x;
       this.y=y;
       this.idx=idx;
    }
    
    
    void display(){
      
      //ferris wheel
      
      fill(ferrisColor[idx]);
      ellipse(x,y,45,32);
      
      //window
      fill(#DEFAFF);
      rect(x-15,y+-9,32,11,31);
      
      
  
      
    }
    
    
  }
  
  Ferris ferrisArr[]=new Ferris[9];
  void setGradient(int x, int y, float w, float h, color c1, color c2) {
  
    noFill();
  
    for (int i = y; i <= y+h; i++) {
        float inter = map(i, y, y+h, 0, 1);
        color c = lerpColor(c1, c2, inter);
        stroke(c);
        line(x, i, x+w, i);
     }
  }
  
  
  
  public London(){
    
    PLImage=loadImage("PL.png");
   
    
    c1=color(#E4A2FF);
    c2=color(#6AAEFF);
    

    
    
    
    
  }
  void drawLondon(){
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
    //Big ben
    bigBen(width/2-163,height/2+143);
    
    //ferrisWheel
    ferrisWheel();
    
    //PL 
    drawPL();
    
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
    text("LONDON",width/2-144,height/2+279);
    
    
   
    
    
    
    
    
  
    
  }
  
  void ferrisWheel(){
    add+=0.01;
    noFill();
    stroke(#BFBDBD);
    strokeWeight(8);
    ellipse(392,249,206,206);
    
    triangle(433,462,360,483,392,253);
    ellipse(391,248,264,264);
    
    noStroke();
    float radius=137;
    float centerX=width/2+-10;
    float centerY=height/2-51;
    int ferrisIdx=0;
    int idx=0;
    
    for(float angle=0;angle<TWO_PI;angle+=0.7){
      
      
      float x=centerX+radius*cos(angle+add);//add the angle --> increase the angle
      //like 40.1 -> 40.2 -> 40.3 
      float y=centerY+radius*sin(angle+add);
      
     
      
      ferrisArr[ferrisIdx]=new Ferris(x,y,idx);
      
      
      ferrisIdx++;
      
      idx++;
     
      
      
      
    }
    
    
    for(int i=0;i<9;i++){
      pushMatrix();
      ferrisArr[i].display();
      
      popMatrix();
    }
    
    rotate+=0.1;
  }
  
  void bigBen(int x,int y){
    
    fill(#bd8926);
    rect(x-6,y-173,90,229);
    fill(#553A20);
    rect(251,297,10,165);
    rect(271,297,10,165);
    rect(291,297,10,165);
    fill(#bd8926);
    rect(x-22,y-249,121,85);
    rect(223,165,101,38);
    fill(#31456e);
    quad(222,167,239,120,308,119,325,166);
    fill(#bb9856);
    rect(239,92,67,28);
    fill(#314578);
    triangle(239,93,308,94,274,59);
    stroke(#314578);
    strokeWeight(3);
    fill(255);
    ellipse(274,237,54,55);
    
    
  }
  
  void drawPL(){
    image(PLImage,430,350,width/5,height/5);
  }
}

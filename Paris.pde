PImage triumph;

class Paris{
  
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
  
  
  
  public Paris(){
   
    
    c1=color(#40BAC6);
    c2=color(#F5E981);
    triumph=loadImage("triumph.png");
    
    
    
  }
  
  void drawParis(){
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
    
    //triumph
    
    image(triumph,167,238,width/2,height/2);
    
    
    //eiffel tower
    drawEiffel();
    
    
    
    fill(255,255,255);
    bezier(362,511,355,497,229,442,203,510);
    bezier(306,511,400,488,356,426,494,510);
    bezier(433,507,528,484,443,434,577,510);
    
     //quad
    
    fill(#FFB2E4);
    quad(205, 509, 574, 509, 640, 614, 143, 604);
    
    //button
    fill(#F53495);
    textSize(64);
    text("Paris",width/2-92,height/2+279);
    
  }
  
  
  
  void drawEiffel(){
    
    fill(#D3C57C);
    noStroke();
    //1st stair
    quad(344,388,294,384,220,517,291,522);
    
    quad(507,373,454,382,499,514,570,513);
    rect(276,356,251,40);
    //1st stair rect
    
    if(frameCount%5==0){
      fill(#A58D12);
    }
    else{
      fill(#F7F493);
    }
    
    
    for(int i=0;i<9;i++){
      rect(280+28*i,375,20,12);
    }
    
    //right quad
    quad(325,400,299,399,269,455,300,455);
    
    quad(299,467,267,467,236,513,269,513);
    
    
    //left quad
    quad(507,400,476,401,497,456,528,455);
    quad(536,465,500,465,506,529,558,509);
    
    
    
    
    //2nd stair
    fill(#D3C57C);
    
    quad(307,357,343,265,384,262,356,361);
    quad(450,362,421,261,451,233,502,360);
    
    rect(334,237,143,30);
    
    //2nd stair rect
    
    if(frameCount%5==0){
      fill(#A58D12);
    }
    else{
      fill(#F7F493);
    }
    
    
    //left quad
    quad(316,356,333,315,359,317,345,357);
    quad(336,306,352,269,372,268,360,307);
    
    //right quad
    quad(461,357,447,315,471,315,489,356);
    quad(433,268,445,309,470,309,455,267);
    
    for(int i=0;i<6;i++){
      rect(336+24*i,246,20,12);
    }
    
    
    //3rd stair
    fill(#D3C57C);
    quad(397,54,349,239,464,237,438,55);
    fill(#D6F4FF);
    quad(425,99,426,233,386,233,403,100);
    fill(#D3C57C);
    triangle(396,58,417,18,439,58);
    
    //3rd stair rect
    if(frameCount%5==0){
      fill(#A58D12);
    }
    else{
      fill(#F7F493);
    }
    
    //right
    quad(369,201,359,235,373,235,381,200);
    quad(381,153,371,193,382,192,391,152);
    quad(399,104,391,106,383,147,391,145);
    
    //left
    quad(435,199,441,231,457,233,449,198);
    quad(433,150,435,190,448,190,442,151);
    quad(431,104,433,143,442,143,437,104);
    
    //top quad
    quad(403,61,394,93,435,93,433,61);
    
    
    
  }
  
  //triomphe
  
  //trees
}

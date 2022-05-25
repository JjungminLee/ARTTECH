
color blue=#1E2F6C;
color green[]={#33672D,#61AD57,#8EF2BC,#85EA79};

class Seoul{
  
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
  
  
  
  public Seoul(){
   
    
    c1=color(#4868FF);
    c2=color(#B9F9FF);
    
    
    
    
  }
  
  void drawSeoul(){
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
    
    //mountain
    mountain();
    
    //namsan toewr
    seoulTower();
    
    //palace
    palace();
    
    //snow land
    fill(255,255,255);
    bezier(362,511,355,497,229,442,203,510);
    bezier(308,511,431,488,356,411,494,510);
    bezier(458,511,536,428,608,434,577,510);
  
    
     //quad
    
    fill(#FFB2E4);
    quad(205, 509, 574, 509, 640, 614, 143, 604);
    
    //button
    fill(#F53495);
    textSize(64);
    text("Seoul",width/2-92,height/2+279);
    
  }
  
  void mountain(){
    //left
   fill(green[0]);
   bezier(447,491,384,471,345,27,211,496);
   fill(blue);
   bezier(437,615,382,553,374,27,215,503);
   fill(green[1]);
   bezier(437,616,379,630,394,27,215,503);
   
   
   //right
   fill(green[0]);
   bezier(575,506,579,356,501,80,403,488);
   fill(blue);
   bezier(578,506,560,418,521,120,403,488);
   fill(green[1]);
   bezier(581,505,553,484,528,154,415,488);
   fill(blue);
   bezier(576,505,560,559,528,171,424,488);
   fill(green[2]);
   bezier(576,505,568,559,532,246,424,488);
    
  }
  
  void seoulTower(){   //<>//
   fill(#F2E7C9);   //<>//
   rect(417,287,43,222);  //<>//
   quad(482,252,457,293,423,292,391,252);  //<>//
    //<>//
   //mid   //<>//
   fill(#93918e); 
   rect(357,186,156,78);   //<>//
   
   //window  //<>//
   fill(#8BD8ED);
   for(int i=0;i<7;i++){  //<>//
     rect(369+21*i,204,9,17);
   } 
   for(int i=0;i<7;i++){
     rect(368+21*i,232,9,17); 
   }
    
   fill(#FFF5D6);
   rect(383,152,107,34);   //<>//
   fill(#939187); 
   rect(383,133,107,30);   //<>//
   fill(#6F6D67); 
   rect(373,125,129,8);  //<>//
   
   
   //top 
   fill(#FFF5D6);  //<>//
   quad(467,105,501,126,377,124,409,105); 
   rect(419,96,38,9);   //<>//
   fill(#C4C2BE); 
   rect(432,38,5,58);   //<>//
   }
  
  
 


  void palace(){
   fill(#8B8984);
   rect(293,322,99,5);
   //brown
   fill(#7f4d46);
   rect(253,388,173,37);
   fill(0);
   quad(294, 327, 391, 327, 454, 390, 221, 390);
   //green
   fill(#449352);
   rect(253,390,175,4);
   
   //window
   fill(#90757F);
   for(int i=0;i<7;i++){
     rect(260+i*23,401,18,19);
   }
   
   
   fill(#C4BFBE);
   rect(249,464,178,63);
   fill(0);
   quad(214, 465, 461, 467, 426, 424, 252, 425);
  
  }
  
}

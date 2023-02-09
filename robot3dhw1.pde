float baseH = 100;
float armL1 = 60;
float armL2 = 60;
float armL3 = 40;
float armL4 = 30;
float armW1 = 10;
float armW2 = 10;
float armW3 = 10;
float armW4 = 10;
float angle1 = 0;
float angle2 = 0;
float angle3 = 0;
float angle4 = 0;
float angle5 = 0;
float dif = 1.0;


void setup(){
  size(1200, 800, P3D);
  //background(255);
  
  camera(300, -200, 0, 0, 0, 0, 0, 0, -1);
  
  noStroke();  
}

void draw(){
  
  background(255);
  
  if(keyPressed){
   
     if(key == 'a')
     {
      angle1 = angle1 + dif;
      angle2 = angle2 - dif;
      angle3 = angle3 + dif;
      angle4 = angle4 + dif;
      angle5 = angle5 - dif;
    }
    if(key == 'a'){
      angle1 = angle1 + dif;
    }
    if(key == 's'){
      angle1 = angle1 - dif;
    }
    if(key == 'l'){
      angle2 = angle2 - dif;
      angle3 = angle3 - dif;
      angle4 = angle4 - dif;
      angle5 = angle5 - dif;
    }
    if(key == 'k'){
      angle2 = angle2 + dif;
      angle3 = angle3 + dif;
      angle4 = angle4 + dif;
      angle5 = angle5 + dif;
    }
      if(key == 's')
     {
      angle1 = angle1 - dif;
      angle2 = angle2 + dif;
      angle3 = angle3 - dif;
      angle4 = angle4 - dif;
      angle5 = angle5 + dif;
    }
    
    
  }
  
  //base
   pushMatrix(); 
 
translate(0,0,100);//頭の部分
fill(0);
box(50,50,50);

 pushMatrix();
 translate(25,0,-50);//右腕肘まで
  rotateX(radians(-angle1));
  translate(0,0,-armL3 /2);
  fill(90);
  box(armW3,armW3,armL3);
  
  translate(0,0,-armL3/2);//右腕肘より下
  rotateX(radians(-angle4));
  translate(0,0,-armL4/2);
  fill(200);
  box(armW4,armW4,armL4);
  
   popMatrix(); 
   translate(-25,0,-50);//左腕肘まで
  rotateX(radians(angle1));
  translate(0,0,-armL3 /2);
  fill(90);
  box(armW3,armW3,armL3);
  
  translate(0,0,-armL3/2);//左腕肘から下
  rotateX(radians(-angle5));
  translate(0,0,-armL4/2);
  fill(200);
  box(armW4,armW4,armL4);

 popMatrix(); 
  translate(0,0,50);//胴体
  fill(100);
  box(40,20,baseH);
  
 
  //右足ふともも
   pushMatrix(); 
  translate(15,0,- baseH/2);
  rotateX(radians(angle1));
  translate(0,0,-armL1 /2);//書かれる中心の位置
  fill(150);
  box(armW1,armW1,armL1);
  
  //右足ひざ下
  translate(0,0,-armL1/2);//回転中心
  rotateX(radians(angle2/2));  
  translate(0,0,- armL1/2);
  fill(125);
  box(armW2,armW2,armL2);
  
  //左足ふともも
  popMatrix(); 
  translate(-15,0,- baseH/2);
  rotateX(radians(-angle1));
  translate(0,0,-armL1 /2);
  fill(150);
  box(armW1,armW1,armL1);

//左足ひざ下
  translate(0,0,-armL1/2);
  rotateX(radians(angle3/2)); 
  translate(0,0,- armL1/2);
  fill(125);
  box(armW2,armW2,armL2);
  
}

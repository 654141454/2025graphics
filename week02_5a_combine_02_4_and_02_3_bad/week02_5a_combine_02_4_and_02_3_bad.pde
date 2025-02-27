//week02_5a_combine_02_4_and_02_3_bad
//要描圖,卻出錯
PImage img;
void setup(){
    size(400, 400);
    img = loadImage("cute.png");
}
void draw(){
  background(img);
  fill(255, 200);
  rect(0, 0, 400, 400);
  
  stroke(255,0,0);
  if(mousePressed) line(mouseX, mouseY, pmouseX, pmouseY);
}

//week02_6_ArrayList_ArrayList_Integer_for_for_mousePressed_new_a
//想要很多段, 不要一筆畫一直接著畫
ArrayList<Integer> x, y;
ArrayList<ArrayList<Integer>> xx = new ArrayList<ArrayList<Integer>>();
ArrayList<ArrayList<Integer>> yy= new ArrayList<ArrayList<Integer>>();
PImage img;
void setup(){
    size(400, 400);
    img = loadImage("cute.png");
}
void draw(){
  background(img);
  fill(255, 200);
  rect(0, 0, 400, 400);
  
  for(int I=0; I<xx.size(); I++){
    ArrayList<Integer> x =xx.get(I);
    ArrayList<Integer> y =yy.get(I);
     for(int i=1; i<x.size(); i++){
      line(x.get(i), y.get(i), x.get(i-1), y.get(i-1));
     }
  }
}
void keyPressed(){
  if(key=='s' || key=='S'){
    for(int I=0; I<xx.size(); I++){
      ArrayList<Integer> x =xx.get(I);
      ArrayList<Integer> y =yy.get(I);
      println("beginShape();");
      for(int i=1; i<x.size(); i++){
        println("vertex("+x.get(i)+". "+y.get(i)+");");
      }
      println("endShape;");
    }
  }
}
void mouseDragged(){
  x.add(mouseX);
  y.add(mouseY);
}
void mousePressed(){
  x = new ArrayList<Integer>(); xx.add(x);
  y = new ArrayList<Integer>(); yy.add(y);
}
  

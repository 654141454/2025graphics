//week09-5
PShape uparml, upuparml,handl;
void setup(){
  size(400,400,P3D);
  uparml=loadShape("uparml.obj");
  upuparm=loadShape("upuparm.obj");
  hand=loadShape("hand.obj");
}
  float [] angle =new float[20];
  int ID=0;
  void keyPressed(){
    if(key=='1') ID = 1;
    if(key=='2') ID = 2;
  }
void mouseDragged(){
  angle[ID] +=mouseX-pmouseX;
}
void draw(){
  background(204);
  translate(200,300);
  sphere(3);
  
  scale(10,-10,10);
  
  shape(upuparml, 0, 0);
  pushMatrix();
    translate(-4.1, 19.9);
    rotateZ(angle[1]);
    translate(4.1, -19.5);
    shape(uparml, 0,0);
    pushMatrix();
    translate(-4.5, +16.9);
    rotateX(angle[2]);
    translate(4.5, -16.9);
    shape(handl, 0,0);
   popMatrix(); 
  popMatrix();
}

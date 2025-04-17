//week09-3
PShape uparml, upuparml,handl;
void setup(){
  size(400,400,P3D);
  uparml=loadShape("uparml.obj");
  upuparm=loadShape("upuparm.obj");
  hand=loadShape("hand.obj");
}
void draw(){
  background(204);
  translate(200,300);
  sphere(3);
  
  scale(10,-10,10);
  
  shape(upuparml, 0, 0);
  pushMatrix();
    translate(-4.1, 19.9);
    rotateZ(radians(mouseX));
    translate(4.1, -19.5);
    shape(uparml, 0,0);
    pushMatrix();
    translate(-4.5, +16.9);
    rotateX(radians(mouseX));
    translate(4.5, -16.9);
    shape(handl, 0,0);
   popMatrix(); 
  popMatrix();
}

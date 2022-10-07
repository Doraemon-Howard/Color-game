void rectButton(String text, float x, float y, float w, float h, int size, boolean c){
  if (mouseX>x-w/2 && mouseX<x+w/2 && mouseY > y-h/2 && mouseY <y+h/2){
  strokeWeight(10);
  stroke(red);
}else {
  strokeWeight(2);
  stroke(0);
}
 if (c){
   fill(pressed);
 }else{
   fill(white);
 }
  textSize(size);
  rect(x,y,w,h);//remember the mode is center
  fill(0);
  text(text,x,y);
  }
void rectButton(String text, float x, float y, float w, float h, int size){
  if (mouseX>x-w/2 && mouseX<x+w/2 && mouseY > y-h/2 && mouseY <y+h/2){
  strokeWeight(10);
  stroke(red);
  fill(white);
}else {
  strokeWeight(2);
  stroke(0);
 
  fill(white);
}
  textSize(size);
  rect(x,y,w,h);//remember the mode is center
  fill(0);
  text(text,x,y);
  }
void rectButton(PImage pic, float x, float y, float w, float h){
if (mouseX>x-w/2 && mouseX<x+w/2 && mouseY > y-h/2 && mouseY <y+h/2){
  strokeWeight(10);
  stroke(red);
  fill(white);
}else {
  strokeWeight(0);
  stroke(0);
  fill(white);
}

  rect(x,y,w,h);//remember the mode is center
  image(pic,x,y,w,h);
}

void selectImage(float x, float y, float size,PImage click){
  if (mouseX>x-size/2 && mouseX<x+size/2 && mouseY>y-size/2 && mouseY<y+size/2){
    selected=click;
  }
}

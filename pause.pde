void pause(){
  image(gif2[numberofFrame2],400,400,800,800);
  numberofFrame2++;
  if (numberofFrame2==47){
    numberofFrame2=0;
  }
  textSize(100);
  fill(yellow);
  text("Pause",400,200);
  rectButton(resumeicon,100,100,100,100);
}

void pauseClicks(){
  if(dist(mouseX,mouseY,100,100)<50){
    mode=Game;
  }
}

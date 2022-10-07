void mouseReleased(){
  if (mode==Intro){
    introClicks();
}else if (mode==Game){
  gameClicks();
}else if (mode==Pause){
  pauseClicks();
}else if (mode==Gameover){
  gameoverClicks();
}else if (mode==Option){
  optionClicks();
}
}

void mouseDragged(){
  if(mouseX>50&&mouseX<250&&mouseY>380&&mouseY<420){
    slider=mouseX;}
}

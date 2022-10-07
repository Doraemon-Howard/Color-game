void intro(){
  image(gif[numberofFrame],400,400,800,800);
  numberofFrame++;
  if (numberofFrame==104){
    numberofFrame=0;
  }
  strokeWeight(1);
  fill(#CEC4C4);
  textSize(speed);
  text("Color GAME",400,300);
  text("Start",400,200);
  theme.play();
  if (increase){
  speed++;}else{
    speed--;}
  if (speed==100 || speed==5){increase=!increase;}
  
  //tactile button
  rectButton("Start", 300,500,200,100,50);
  rectButton("Option",500,500,200,100,50); 
}


void introClicks(){
  
  if(mouseX>200 && mouseX<400 && mouseY>450 && mouseY<550){
    mode=Game;
    score=0;
    if (livemode==1) lives=3;
    if (livemode==2) lives=5;
    if (livemode==3) lives=8;
    
}
    if(mouseX>400 && mouseX<600 && mouseY>450 && mouseY<550){
    mode=Option;
 
    }
}

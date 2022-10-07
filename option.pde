void option(){
  image(gif1[numberofFrame1],400,400,800,800);
  numberofFrame1++;
  if (numberofFrame1==125){
    numberofFrame1=0;
  }

  textSize(70);
  text("Option",400,100);
  
  //return
  rectButton(returnicon, 100,100,100,100);
  
  //speed
  fill(purple);
  textSize(50);
  text("Speed:",100,200);
  rectButton("Slow",300,200,100,75,30, (velocity==0.6)); //0.6x
  rectButton("Medium",450,200,100,75,20, (velocity==1)); //1x
  rectButton("Fast",600,200,100,75,30,(velocity==1.8));  //1.8x
  fill(red);
  textSize(50);
  //number of lives
  text("Lives:", 100,400);
  rectButton("3",300,400,100,75,30, (livemode==1)); //
  rectButton("5",450,400,100,75,30, (livemode==2)); //
  rectButton("8",600,400,100,75,30,(livemode==3));  //
  
  
}


void optionClicks(){
  //return
  if(mouseX>50 && mouseX<150 && mouseY>50 && mouseY<150){
    mode=Intro;
  }
  
  //speed================================================================================
  if(mouseX>250 && mouseX<350 && mouseY>163 && mouseY<237){//slow
    velocity=0.6;
}
  if(mouseX>400 && mouseX<500 && mouseY>163 && mouseY<237){//medium
    velocity=1;
}
  if(mouseX>550 && mouseX<650 && mouseY>163 && mouseY<237){//fast
    velocity=1.8;
}
  //live=========================================================================
  if(mouseX>250 && mouseX<350 && mouseY>363 && mouseY<437){//slow
    livemode=1;
}
  if(mouseX>400 && mouseX<500 && mouseY>363 && mouseY<437){//medium
    livemode=2;
}
  if(mouseX>550 && mouseX<650 && mouseY>363 && mouseY<437){//fast
    livemode=3;
}

    
  
  
}

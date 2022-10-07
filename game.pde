void game(){
  background(0);
  fill(white); 
  rect(200,400,400,800);
  fill(black);
  rect(600,400,400,800);
  //pause button
  image(pauseicon,100,100,100,100);
  //display
  fill(colors[randomColor]);
  textSize(textsize);
  text(words[randomWord],width/2,height/2);
  textSize(40);
  fill(black);
  text("same",200,300);
  fill(white);
  text("different",600,300);
  textsize();
  
  if (textsize>100){  
    if (clicked==false){
    lives--;
  }
    textsize=5;
    regenerate();
  }
  
  if (lives==0){
    mode=Gameover;
    theme.pause();
  }
  //scores
  image(diamond,300,55,60,60);
  fill(yellow);
  text(score,250,50);
  image(heart,650,55,60,60);
  text(lives,600,50);
  
 
  
}
  
void gameClicks(){
  if (mouseX<400 && randomColor==randomWord){//click same and actually same
    score++;
    success.rewind();
    success.play();
    clicked=true;
  }
  if (mouseX<400 && randomColor!=randomWord){//click same but actually not same
    failure.rewind();
    failure.play();
    lives--;
    clicked=true;
  }
  if (mouseX>400 && randomColor!=randomWord){// click not same and actually not same
    score++;
    success.rewind();
    success.play();
    clicked=true;
  }
  if (mouseX>400 && randomColor==randomWord){//click not same but actually same
    failure.rewind();
    failure.play();
    lives--;
    clicked=true;
  }
  
  if (dist(mouseX,mouseY,100,100)<50){
    mode=Pause;
  }
}
  
void regenerate(){
  
  clicked=false;
  float possibility=random(0,1);
  randomColor=(int)random(0,10);
  if (possibility<0.5){
    randomWord=randomColor;
  }else{
    randomWord=int(random(0,10));
  
  }
  
}

void textsize(){
  if (velocity==0.6) textsize+=0.6;
  if (velocity==1) textsize++;
  if (velocity==1.8) textsize+=1.8;
}

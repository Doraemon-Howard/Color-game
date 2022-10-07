void gameover(){
  //image(gameoverbg,400,400,800,800);
  image(gif1[numberofFrame1],400,400,800,800);
  numberofFrame1++;
  if (numberofFrame1==125){
    numberofFrame1=0;
  }
  text("Game Over",400,300);
  text("Score: "+score,400,400);
  if (score>maxscore){ maxscore=score;}
  text("Highest Score: " + maxscore,400,500);
  text("Click to restart!",400,600);
  gameover.play();
  
  //quit
  rectButton("Quit", 600,700,200,100,50);
  
}



void gameoverClicks(){
  mode=Intro;
  theme.rewind();
  if (mouseX>500&&mouseX<700&&mouseY>650&&mouseY<750){
    exit();
  }
}

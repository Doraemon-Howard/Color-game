void keyReleased(){
  if (mode==Game){
    if(keyCode==LEFT){
      if(randomColor==randomWord){//click same and actually same
        score++;
        success.rewind();
        success.play();
        clicked=true;
  }else{//click same but actually not same
    failure.rewind();
    failure.play();
    lives--;
    clicked=true;
  }
    }
  if (keyCode==RIGHT){
    if (randomColor!=randomWord){// click not same and actually not same
    score++;
    success.rewind();
    success.play();
    clicked=true;
  }else{//click not same but actually same
    failure.rewind();
    failure.play();
    lives--;
    clicked=true;
  }
  }
  } 
}

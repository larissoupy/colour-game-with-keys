void gameover() {
  background(orange);
  text("score: " +score, width/2, 150);
 
  text("gameover", width/2, height/2);
  if (touchingCircle(width-50,height-50,50)){
  stroke(255);
}else{
  stroke(0);
}
tactileCircle(width-50,height-50,50,255);
  
tactileRect(10,10,70,70,255);
}
void gameoverClicks(){
 if (touchingRect(10,10,70,70)) {
    mode = INTRO;
  }
  
    if (touchingCircle(width-50, height-50,50)){
    mode = INTRO;
}
}

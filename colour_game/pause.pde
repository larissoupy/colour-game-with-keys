 void pause() {
  background(green);
 if (touchingCircle(width-50,height-50,50)){
  stroke(255);
}else{
  stroke(0);
}
tactileCircle(width-50,height-50,50,255);
  text("pause", width/2, height/2);
  
tactileRect(10,10,70,70,255);
 }
 
 void pauseClicks(){
  if (touchingRect(10,10,70,70)) {
    mode = GAMEOVER;
  }
  
    if (touchingCircle(width-50, height-50,50)){
    mode = GAMEOVER;
}
 }

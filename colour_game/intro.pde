void intro() {
background(yellow);  

if (touchingCircle(width-50,height-50,50)){
  stroke(255);
}else{
  stroke(0);
}
tactileCircle(width-50,height-50,50,255);

text("intro", width/2, title);

title = title + 5;
if(title > height){
  title = 0;
}

tactileRect(10,10,70,70,255);


}
void introClicks(){
if (touchingRect(10,10,70,70)) {
    mode = GAME;
    
  }
  

}

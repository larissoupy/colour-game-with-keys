void mouseReleased() {
  if (mode == INTRO) {
  introClicks();
  } else if (mode == GAME) {
   gameClicks();
  } else if (mode == PAUSE) {
    pauseClicks();
  } else if (mode == GAMEOVER) {
    gameoverClicks();
  } else if (mode == OPTIONS) {
    optionClicks();
  }


    
    
}

//void keyReleased(){
// if (keyCode == LEFT && match == true){
//   timer = 200;
//    score = score + 1;

//    randomNumber = random(0, 1);
//    SUCCESS.play();
//    SUCCESS.rewind();

//    if (randomNumber < 0.5) {
//      randomColor = (int) random (0, 6);
//      randomWord = randomColor;
//    } else {
//      while (randomColor == randomWord) {
//        randomColor = (int) random (0, 6);
//        randomWord = (int) random (0, 6);
//      }
//    }
// }
// if (keyCode == RIGHT && match == false){
//   timer = 200;
//    score = score + 1;

//    SUCCESS.play();
//    SUCCESS.rewind();
//    randomNumber = random(0, 1);

//    if (randomNumber < 0.5) {
//      randomColor = (int) random (0, 6);
//      randomWord = randomColor;
//    } else {
//      while (randomColor == randomWord) {
//        randomColor = (int) random (0, 6);
//        randomWord = (int) random (0, 6);
//      }
//    }
// }
  
//}

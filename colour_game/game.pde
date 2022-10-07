void game() {
  background(red);


  if (touchingCircle(width-50, height-50, 50)) {
    stroke(255);
  } else {
    stroke(0);
  }
  tactileCircle(width-50, height-50, 50, 255);


  tactileRect(0, 0, width/2, height, black);
  tactileRect(width/2, 0, width, height, white);

  tactileRect(10, 10, 70, 70, 255);


  //put star thing in here
  text("game", width/2, height/2);
  fill(grey);
  textSize(40);
  text("timer: " +timer, width/2, 100);
  text("score: " +score, width/2, 150);
  timer = timer - 1;
  title = title + 5;
if(title > height){
  title = 0;
}

  //////////////
  textSize(100);
  fill(colors[randomColor]);
  text(words[randomWord], width/2, title);
  if (timer == 0 || timer < 0) {
    mode = GAMEOVER;
  }
  ///////////////



  ////////////////

  //just gonna take notes rn in this space
  //so basically if color && word match, match = true, if no match match = false?
  //and then buttons are if true it stay, if false i am f a i l i u r e

  //pls clean
  if (randomColor == randomWord) {
    match = true;
  } else {
    match = false;
  }
}

void gameClicks() {

  println(match, touchingRect(width/2, 0, width, height));

  if (touchingRect(10, 10, 70, 70)) {
    mode = PAUSE;
  }

  if (touchingCircle(width-50, height-50, 50)) {
    mode = PAUSE;
  }
  

    

  if (touchingRect(width/2, 0, width, height) && match == true) {
    //mode = INTRO;
    timer = 200;
    score = score + 1;

    randomNumber = random(0, 1);
    SUCCESS.play();
    SUCCESS.rewind();

    if (randomNumber < 0.5) {
      randomColor = (int) random (0, 6);
      randomWord = randomColor;
    } else {
      while (randomColor == randomWord) {
        randomColor = (int) random (0, 6);
        randomWord = (int) random (0, 6);
      }
    }
  }

  if (touchingRect (0, 0, width/2, height) && match == false) {
    //mode = INTRO;
    timer = 200;
    score = score + 1;

    SUCCESS.play();
    SUCCESS.rewind();
    randomNumber = random(0, 1);

    if (randomNumber < 0.5) {
      randomColor = (int) random (0, 6);
      randomWord = randomColor;
    } else {
      while (randomColor == randomWord) {
        randomColor = (int) random (0, 6);
        randomWord = (int) random (0, 6);
      }
    }
  }



  //not sure how to prevent them from not working with eachother but im gonna try
  //gotta write them separate so they dont fight eachother
  if (touchingRect (width/2, 0, width, height) && match == false) {
    mode = GAMEOVER;
    timer = 200;
    FAILURE.play();
    FAILURE.rewind();
  }


  if (touchingRect (0, 0, width/2, height) && match == true ) {
    mode = GAMEOVER;
    timer = 200;
    FAILURE.play();
    FAILURE.rewind();
  }
}
void keyReleased(){
 if (keyCode == RIGHT && match == true){
   timer = 200;
    score = score + 1;

    randomNumber = random(0, 1);
    SUCCESS.play();
    SUCCESS.rewind();

    if (randomNumber < 0.5) {
      randomColor = (int) random (0, 6)+1;
      randomWord = randomColor;
    } else {
      while (randomColor == randomWord) {
        randomColor = (int) random (0, 6);
        randomWord = (int) random (0, 6);
      }
    }
 }
 if (keyCode == LEFT && match == false){
   timer = 200;
    score = score + 1;

    SUCCESS.play();
    SUCCESS.rewind();
    randomNumber = random(0, 1);

    if (randomNumber < 0.5) {
      randomColor = (int) random (0, 6);
      randomWord = randomColor;
    } else {
      while (randomColor == randomWord) {
        randomColor = (int) random (0, 6);
        randomWord = (int) random (0, 6);
      }
    }
 }
 
 if (keyCode == LEFT && match == true){
   mode = GAMEOVER;
    timer = 200;
    FAILURE.play();
    FAILURE.rewind();
 }
 
 if (keyCode == RIGHT && match == false){
  mode = GAMEOVER;
    timer = 200;
    FAILURE.play();
    FAILURE.rewind();
}
}

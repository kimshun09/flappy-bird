int y=0, dy=0, h=0;
int move1=0, move2=0, move3=0;
boolean gameOver=false;
int score = 0;
float aa, ab, ba, bb, ca, cb;

void setup(){
  background(0, 255, 255);
  size(500, 700);
}

void draw(){
  
  if(keyPressed){
    if(key == ENTER){
      move1 = 0;
      move2 = 0;
      move3 = 0;
      y = 0;
      dy = 0;
      h = 0;
      score = 0;
      gameOver = false;
    }
  }
  
  if(gameOver){
    if(keyPressed){
      if(key == ENTER){
        move1 = 0;
        move2 = 0;
        move3 = 0;
        y = 0;
        dy = 0;
        h = 0;
        score = 0;
        gameOver = false;
      }
    }
    return;
  }
  
  background(0, 255, 255);
  textAlign(CENTER);
  fill(255, 182, 193);
  textSize(500);
  text(score, width/2, height*3/4);
  
  bird(250, height/2+h);
  h = y/4;
  y += dy;
  if(dy<30){
    dy ++;
  }
  if(dy>40){
    dy = 40;
  }
 if(dy<-30){
    dy = -30;
 }
 
  if(move1 == 1){
    aa = random(0, 500);
    ab = aa + 180;
  }
  
  fill(0, 255, 0);
  rect(500-move1, 0, 75, aa);
  rect(500-move1, ab, 75, 500);
  
  if(270 > 500-move1 && 230 < 575-move1){
    if(height/2+h-15 < aa || height/2+h+15 > ab){
      textAlign(CENTER);
      textSize(70);
      fill(255, 0, 0);
      text("Game Over!", width/2, 300);
      textSize(30);
      fill(0);
      text("Press ENTER to Restart", width/2, 400);
      gameOver = true;
    }
  }
  if(move1 == 725){
    move1 = 0;
  }
  move1 ++;
 
  if(move1 == 250 || move2 == 500){
    score ++;
  }
  
  if(move2 == 1){
    ba = random(0, 500);
    bb = ba + 180;
  }
  
  fill(0, 255, 0);
  rect(750-move2, 0, 75, ba);
  rect(750-move2, bb, 75, 500);
  
  if(270 > 750-move2 && 230 < 825-move2){
    if(height/2+h-15 < ba || height/2+h+15 > bb){
      textAlign(CENTER);
      textSize(50);
      fill(255, 0, 0);
      text("Game Over!", width/2, 300);
      gameOver = true;
    }
  }
  if(move2 == 975){
    move2 = 250;
    ba = random(0, 500);
    bb = ba + 180;
  }
  move2 ++;
  
  if(move2 ==750){
    score ++;
  }
  
  if(move3 == 1){
    ca = random(0, 500);
    cb = ca + 180;
  }
  
  fill(0, 255, 0);
  rect(1000-move3, 0, 75, ca);
  rect(1000-move3, cb, 75, 500);
  
  if(270 > 1000-move3 && 230 < 1075-move3){
    if(height/2+h-15 < ca || height/2+h+15 > cb){
      textAlign(CENTER);
      textSize(50);
      fill(255, 0, 0);
      text("Game Over!", width/2, 300);
      gameOver = true;
    }
  }
  if(move3 == 1225){
    move3 = 500;
    ca = random(0, 500);
    cb = ca + 180;
  }
  move3 ++;
}

void mousePressed(){
  dy -= 50;
}

void bird(int birdX, int birdY){
  fill(255, 255, 0);
  ellipse(birdX, birdY, 50, 40);
  fill(255);
  ellipse(birdX+15, birdY-10, 25, 25);
  ellipse(birdX-15, birdY, 30, 20);
  fill(0);
  ellipse(birdX+15, birdY-10, 5, 5);
  fill(255, 0, 0);
  rect(birdX+5, birdY+3, 25, 7);
}
  
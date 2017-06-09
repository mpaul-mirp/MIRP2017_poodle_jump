void setup() {
  size(displayWidth, displayHeight);
  resetGame();
  textFont(createFont("Arial Bold", 50));
}

void draw() {
  initializePlatforms();
  drawPlayer();
  
  
}

void drawStartScreen() {
}

void drawLoseScreen() {
}

void drawGameScreen() {
}

void drawPlayer() {
  fill(playerColor);
  ellipse(playerX,playerY,2*playerRadius,2*playerRadius);
}

void drawPlatforms() {
  fill(platformColor);
  rectMode(CENTER);
  platformIndex+=1;
  platforms[platformIndex][0] = random(displayWidth);
  platforms[platformIndex][1] = random(displayHeight);
  rect(platforms[platformIndex][0],platforms[platformIndex][1],platformLength,platformHeight,platformRadius);
  
}

void resetGame(){
  // Initialize Player Position and Velocity
  initializePlatforms();
}

void initializePlatforms() {
 for (int platformIndex=1;platformIndex<=random(numPlatforms,lenPlatforms);platformIndex++)
 {  platforms[platformIndex][0] = random(displayWidth);
    platforms[platformIndex][1] = random(displayHeight);
    rect(platforms[platformIndex][0],platforms[platformIndex][1],platformLength,platformHeight,platformRadius);}
  // Create Initial Set of Platforms
}

void displayScore() {
  // Show Player Score in a corner
}
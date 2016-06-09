boolean _gameOver;
boolean _startGame;
int _money;
int _level;
Storage _storage;
//queue ConstructionQueue;


void setup() {
  //textSize(32);
  //text("PEST DECIMATION", 250, 100); 
  size(650,600);
  background(0);
  stroke(255);//to avoid border intersection
  fill(255); //makes it grey
  rect(75, 50, 50, 500);
  rect(525,50, 50, 500);
  rect(75,50, 500, 50);
  rect(75,500, 500, 50); 
  //creating visual spawn range 
  _startGame=false;
  _gameOver = false;
  _money = 0;
  _level = 0;
  _storage=new Storage(25);
  /*BUG SPAWN RANGE: --- ***we're just doing the bug screen without side panes first***
  X-cor: randomly choose an x-cor from 75 to 525...
  if <100 or >525, then choose y-cor from 50 to 550
  else choose y-cor from either 50 to 75 or 525 to 550
  also-
  make the spawn range a different color?
  */
  //make bugs to add to queue
}

void draw() {
  if (!_startGame){
    //==============================
    fill(255);
    textSize(40);
    text("PEST DECIMATION ", 150, 200);
    rect(250, 250, 125, 50);
    fill(0);
    text ("PLAY", 266, 289);
    fill(255);
    rect(250, 350, 125, 50);
    fill(0);
    text ("HELP", 266, 389);
    //setting up initial screen
    //==============================
    
    //background(0,0,0); //refresh background;
    //show bugs
    //have them move, etc.
  }
  else{
    if (!_gameOver){
      clear();
      size(650,600);
      background(0);
      stroke(255);//to avoid border intersection
      fill(255); //makes it grey
      rect(75, 50, 50, 500);
      rect(525,50, 50, 500);
      rect(75,50, 500, 50);
      rect(75,500, 500, 50);
      textSize(30);
      text("LVL: "+_level, 275, 35);
      ellipseMode(CENTER);
      ellipse(313, 300, _storage.size*2, _storage.size*2);
      //begin to spawn bugs
    }
    //make game over screen later
  }
}

void mouseClicked(){
     if(!_startGame){
       if ((mouseX> 250)&& (mouseX < 375)&&(mouseY>250)&&(mouseY<300)){
        _startGame=true;
        //starts game when user clicks on play
      }
     }
}
       

void mousePressed() {
  //if same xcor and ycor as bug, decrease hp
}
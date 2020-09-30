/** 
 * Array 2D. 
 * 
 * Demonstrates the syntax for creating a two-dimensional (2D) array.
 * Values in a 2D array are accessed through two index values.  
 * 2D arrays are useful for storing images. In this example, each dot 
 * is colored in relation to its distance from the center of the image. 
 */
 
import java.util.Random;
//billeder til programmet i stedet for firkanter.
PImage imgTess;
PImage imgThor;
PImage imgCoronaVirus;
PImage imgVacine;
Game game = new Game(25, 25, 5,5);
PFont font;

public void settings() {
  size(1001, 1001);
}

void setup()
{
  frameRate(10);
  font = createFont("Arial", 16, true);
  textFont(font, 16);
  //billederne bliver loadet
  imgTess = loadImage("Tess.png");
  imgThor = loadImage("Thor.png");
  imgCoronaVirus = loadImage("CoronaVirus.png");
  imgVacine = loadImage("Vacine.png");
}

void keyReleased()
{
  game.onKeyReleased(key);
  game.onArrowReleased(key);
}

void keyPressed()
{
  game.onKeyPressed(key);
  game.onArrowPressed(key);
}

void draw()
{
  game.update();
  background(0); //Black
  // This embedded loop skips over values in the arrays based on
  // the spacer variable, so there are more values in the array
  // than are drawn here. Change the value of the spacer variable
  // to change the density of the points
  int[][] board = game.getBoard();
  for (int y = 0; y < game.getHeight(); y++)
  {
    for (int x = 0; x < game.getWidth(); x++)
    {
      if(board[x][y] == 0)
      {
        fill(0,0,0);
      }
      else if(board[x][y] == 1)
      {
        image(imgTess,x*40,y*40,40,40);
        fill(0,0,255);
      }
      else if(board[x][y] == 2)
      {
        //enemies
        image(imgCoronaVirus,x*40,y*40,40,40);
        fill(255,0,0);
      }
      else if(board[x][y] == 3)
      {
        image(imgVacine,x*40,y*40,40,40);
        fill(0,255,0);
      } 
       else if(board[x][y] == 4)
      {
        image(imgThor,x*40,y*40,40,40);
        fill(0,255,255);
      } 
      
      //stroke(100,100,100);
      //rect(x*40, y*40, 40, 40);
    }
  }
  if (game.getPlayerLife() > 0 && game.getPlayerLife2() > 0){
  fill(255);
  text("Player 1 lifes: "+game.getPlayerLife(), 25,25);
  text("Player 2 lifes: "+game.getPlayerLife2(), width-200,25);
 
  }else if (game.getPlayerLife() <= 0){
    fill(255);
    textSize(80);
    text("Thorbjørn WINS!", width/2-300,height/2);
    image(imgThor,width/2-100,height/2-300,200,200);
    noLoop();
       
    }
    else if (game.getPlayerLife2() <= 0){
    fill(255);
    textSize(80);
    text("Tess WINS!", width/2-225,height/2);
    image(imgTess,width/2-100,height/2-300,200,200);
    noLoop();
       
    }
  }

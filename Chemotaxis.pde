Bacteria [] colony;

 void setup()   
 {     
 	size(800, 800);
 	background(0);
 	colony = new Bacteria[100]; 
 	for(int i = 0; i < colony.length; i++)
 	{
 		colony[i]= new Bacteria();
 	}
 	frameRate(10);
 }

 void draw()   
 {    
 	fill(0, 0, 0, 25);
 	rect(-5, -5, 805, 805);
 	for(int i = 0; i < colony.length; i++)
 	{
 		colony[i].move();
 		colony[i].show();
 	}
 }  

 class Bacteria    
 {     
 	int myX, myY, myColor;
 	Bacteria()
 	{
 		myX = 400;
 		myY = 400;
 		myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
 	}

 	void move()
 	{
 		//myX = myX + (int)((Math.random()*10)-5);
    	//myY = myY + (int)((Math.random()*10)-5);
    	int direction = (int)(Math.random()*4);
			if(direction == 0)
			{
				myX += 10; //right
			}
			else if(direction == 1)
			{
				myX -= 10; //left
			}
			else if(direction == 2)
			{
				myY += 10; //down
			}
			else // direction must be 3
			{
				myY -= 10; //up
			}
 	}

 	void show()
 	{
 		int mySize = 5;
 		noStroke();
 		fill(myColor);
 		ellipse(myX, myY, mySize, mySize);
 	}

 	void mousePressed()
 	{

 	}

 }    
Bacteria [] colony;

 void setup()   
 {     
 	size(600, 600);
 	background(0);
 	colony = new Bacteria[20]; 
 	for(int i = 0; i < colony.length; i++)
 	{
 		colony[i]= new Bacteria();
 	}
 	frameRate(20);
 }

 void draw()   
 {    
 	fill(0, 0, 0, 25);
 	rect(-5, -5, 605, 605);
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
 		myX = 300;
 		myY = 300;
 		myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
 	}

 	void move()
 	{
 		//myX = myX + (int)((Math.random()*10)-5);
    	//myY = myY + (int)((Math.random()*10)-5);
    	int direction = (int)(Math.random()*4);
			if(direction == 0)
			{
				myX += 20; //right
			}
			else if(direction == 1)
			{
				myX -= 20; //left
			}
			else if(direction == 2)
			{
				myY += 20; //down
			}
			else // direction must be 3
			{
				myY -= 20; //up
			}
 	}

 	void show()
 	{
 		int mySize = 10;
 		noStroke();
 		fill(myColor);
 		ellipse(myX, myY, mySize, mySize);
 	}

 	void mousePressed()
 	{

 	}

 }    
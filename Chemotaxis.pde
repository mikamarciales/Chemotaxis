Bacteria [] colony;

 void setup()   
 {     
 	size(1000, 800);
 	background(0);
 	colony = new Bacteria[100]; 
 	for(int i = 0; i < colony.length; i++)
 	{
 		colony[i]= new Bacteria();
 	}
 	frameRate(30);
 }

 void draw()   
 {    
 	fill(0, 0, 0, 25);
 	rect(-5, -5, 1005, 805);
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
 		myX = (int)(Math.random()*1001);
 		//myY = (int)(Math.random()*801);
 		myY = 400;
 		myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
 	}

 	void move()
 	{
 		//myX = myX + (int)((Math.random()*10)-5);
    	//myY = myY + (int)((Math.random()*10)-5);
    	int direction = (int)(Math.random()*4);
			if(direction == 0 && mouseX < 400)
			{
				myX += 15; //right
			}
			else if(direction == 1 && mouseX > 400)
			{
				myX -= 15; //left
			}
			else if(direction == 2 && mouseY < 400)
			{
				myY += 15; //down
			}
			else if(direction == 3 && mouseY > 400)
			{
				myY -= 15; //up
			}
			if(myX < 0)
			{
				myX += 15; //right
			}
			if(myX > 1000)
			{
				myX -= 15; //left
			}
			if(myY < 0)
			{
				myY += 15; //down
			}
			if(myY > 800)
			{
				myY -= 15; //up
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
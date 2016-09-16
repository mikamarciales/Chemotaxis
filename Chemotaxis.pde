Bacteria [] colony;

 void setup()   
 {     
 	size(600, 600);
 	background(0);
 	colony = new Bacteria[100]; 
 	for(int i = 0; i < colony.length; i++)
 	{
 		colony[i]= new Bacteria();
 	}
 }

 void draw()   
 {    
 	fill(0, 0, 0, 10);
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
 		//myColor = (int)(Math.random()*256);
 	}

 	void move()
 	{
 		myX = myX + (int)((Math.random()*10)-5);
    	myY = myY + (int)((Math.random()*10)-5);
 	}

 	void show()
 	{
 		int mySize = 10;
 		noStroke();
 		fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256), 100);
 		ellipse(myX, myY, mySize, mySize);
 	}

 }    
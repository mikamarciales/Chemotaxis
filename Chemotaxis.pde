Bacteria bob = new Bacteria();

 void setup()   
 {     
 	size(600, 600);
 	background(0);
 	//initialize bacteria variables here   
 }

 void draw()   
 {    
 	fill(0, 0, 0, 50);
 	rect(-5, -5, 605, 605);
 	bob.move();
 	bob.show();
 }  

 class Bacteria    
 {     
 	int myX, myY, myColor;
 	Bacteria()
 	{
 		myX = 300;
 		myY = 300;
 		myColor = 255;
 	}

 	void move()
 	{
 		myX = myX + (int)((Math.random()*10)-5);
    	myY = myY + (int)((Math.random()*10)-5);
 	}

 	void show()
 	{
 		noStroke();
 		fill(myColor);
 		ellipse(myX, myY, 50, 50);
 	}

 }    
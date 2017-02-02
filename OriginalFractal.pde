PImage img;

public void setup()
{
	background(253,253,150);
	size(500,500);
	rectMode(CENTER);
	img = loadImage("148606392745607.png");
	
}


public void draw()
{
	fractal(250,250,500);
	image(img,120,120,width/2,width/2);

}



public void fractal(float x, float y, int len) 
{
	noFill();

	stroke(130,105,83);
	strokeWeight(3);
	rect(x, y, len, len);

	stroke(255,50,80);
	strokeWeight(6);
	ellipse(x, y, len, len);

	

	if (len > 100)
	{
		fractal(x, y+len/4, len/2);
		fractal(x+len/4,y,len/2);
		fractal(x-len/4, y,len/2);
		fractal(x, y-len/4, len/2);
	}
		
}
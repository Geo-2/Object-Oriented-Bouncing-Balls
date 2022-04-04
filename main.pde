ArrayList<Class_Ball> array_balls;

void setup() 
{
    size(512, 512);
    background(255);
    
    array_balls = new ArrayList<Class_Ball>();
    array_balls.add(new Class_Ball());

    Class_Ball ball = array_balls.get(0);


    ball.set_spawn();
    ball.draw();

}

// Define


void draw() 
{

}
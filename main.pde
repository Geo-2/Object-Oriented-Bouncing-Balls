Manager_of_balls manager;

ArrayList<Class_Ball> array_balls;

void setup() 
{
    size(512, 512);
    background(255);
    
    // Hire A manager.
    manager = new Manager_of_balls();

    // Make the manager create the array.
    array_balls = manager.initialize_array();

    // Make the manager spawn the balls.
    manager.spawn_ball(array_balls);
}


void draw() 
{
    if (manager.balls_collide)
    {
        println("Oy Administrator, the balls have collided!")
    }

    println("Nothing Happened yet.. Still moving them around...")
}
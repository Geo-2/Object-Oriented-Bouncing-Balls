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
}


void draw() 
{
    background(255);
    manager.check(array_balls);
    // delay(100);
}
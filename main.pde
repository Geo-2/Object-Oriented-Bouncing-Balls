
Manager_of_balls manager;

void setup() 
{
    size(512, 512);
    background(255);
    
    manager = new Manager_of_balls();
}

// Define


void draw() 
{
    background(255);
    manager.start();
    delay(100);
}
Array_balls my_array_balls;

void setup() 
{
    size(512, 512);

    my_array_balls = new Array_balls();

    for (int size = 20; size > 0; size--)
    {
        for (int speed = 5; size > 0; size--)
        {
            my_array_balls.add_ball(speed, size);        
        }
    }
}



void draw() 
{
    // background(255);    

    my_array_balls.draw();

}
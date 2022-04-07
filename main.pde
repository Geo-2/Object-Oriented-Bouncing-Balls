Array_balls my_array_balls;

void setup() 
{
    size(512, 512);

    my_array_balls = new Array_balls();

    my_array_balls.add_ball(15, 5);
    my_array_balls.add_ball(10, 10);
    my_array_balls.add_ball(5, 15);
}



void draw() 
{
    background(255);    

    my_array_balls.draw();

}
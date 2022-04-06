Class_Ball my_ball;
Class_Ball.Collides my_ball_collides;

int my_ball_speed;
int my_ball_size;

void construct_ball()
{
    // Outer class
    my_ball = new Class_Ball(my_ball_speed, my_ball_size);
    // Inner class
    my_ball_collides = my_ball.new Collides();
}


void setup() 
{
    size(512, 512);

    my_ball_speed = 10;
    my_ball_size = 10;
   
    construct_ball();

    my_ball.set_spawn();
}


void draw() 
{
    background(255);    


    // if (my_ball.collides.simple())
    // {
    //     my_ball.bounce();
    // }

    if (my_ball_collides.spooky_x_bounce_y())
    {
        construct_ball();
        my_ball.set_spawn();
    }

    my_ball.move();
    my_ball.draw();
}
Ball my_ball;

int ball_speed = 1;

void setup() 
{
    // Normal stuff.
        size(512, 512);

        // size(100, 100);

        background(255);

    // Setting up objects. 
        my_ball = new Ball(20);
        my_ball.set_spawn();

}

// Debug function for testing ball_speed. 
void keyPressed() 
{

    if (key == CODED)
    {
        if (keyCode == UP)
        {
            ball_speed = ball_speed + 1;
        }
        else if (keyCode == DOWN)
        {
            ball_speed = ball_speed - 1;
        }
        else if (keyCode == CONTROL)
        {
            ball_speed = 0;
        }
        else if (keyCode == ALT)
        {
            my_ball.set_spawn();
        }
    }
}


void draw() 
{
    background(255);
    println(ball_speed);


    my_ball.make_collision_box(width/2, height/2, 200);
        // Make box collision.

    // Check collision
        if (my_ball.hit_floor || my_ball.hit_ceiling)
        {
            my_ball.bounce();
        }
        else if (my_ball.hit_right_wall || my_ball.hit_left_wall)
        {
            my_ball.set_spawn();
        }


    my_ball.move(ball_speed);
    my_ball.draw();
}


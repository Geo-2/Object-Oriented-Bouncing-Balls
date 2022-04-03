Ball my_ball;

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


void draw() 
{
    background(255);


    my_ball.make_collision_box(width/2, height/2, 200);
    check_box_collision();


    int ball_speed = 1;
    my_ball.move(ball_speed);
    my_ball.draw();
}

void check_box_collision()
{
    if (my_ball.hit_floor || my_ball.hit_ceiling)
    {
        my_ball.bounce();
    }
    else if (my_ball.hit_right_wall || my_ball.hit_left_wall)
    {
        my_ball.set_spawn();
    }
}
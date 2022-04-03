Ball my_ball;

void setup() 
{
    // Normal stuff.
        size(512, 512);

        // size(100, 100);

        background(255);

    // Setting up objects. 
        my_ball = new Ball();
        my_ball.set_spawn();

}


void draw() 
{
    background(255);


    make_collision_box(width/2, height/2, 200);
    check_box_collision();


    int ball_speed = 1;
    my_ball.move(ball_speed);
    my_ball.draw();
}

boolean hit_floor;
boolean hit_ceiling;
boolean hit_left_wall;
boolean hit_right_wall;

void make_collision_box(int x, int y, int size)
{
    // Correct like rectmode center

        int half_size = size/2;

        x = x - half_size;
        y = y - half_size;
    

    // Check if ball hit Inside rectangle.

        hit_ceiling = my_ball.edge(x, y,  x + size, y);
        hit_floor =   my_ball.edge(x, y + size,   x + size, y + size);
        hit_left_wall =    my_ball.edge(x, y,   x, y + size);
        hit_right_wall =   my_ball.edge(x + size, y,   x + size, y + size);

}

void check_box_collision()
{
    if (hit_floor || hit_ceiling)
    {
        my_ball.bounce();
    }
    else if (hit_right_wall || hit_left_wall)
    {
        my_ball.set_spawn();
    }
}

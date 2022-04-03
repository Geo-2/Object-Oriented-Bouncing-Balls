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

    my_ball.collision_and_movement();

    my_ball.draw();
}


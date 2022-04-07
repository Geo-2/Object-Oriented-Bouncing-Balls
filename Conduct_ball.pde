class Conduct_ball
{

    Class_Ball my_ball;
    Class_Ball.Collides my_ball_collides;

    int my_ball_speed;
    int my_ball_size;


    Conduct_ball(int temp_speed, int temp_size)
    {
        my_ball_speed = temp_speed;
        my_ball_size = temp_size;
    
        construct_ball();

        my_ball.set_spawn();

    }

    Conduct_ball(int temp_speed)
    {
        my_ball_speed = temp_speed;
        my_ball_size = 10;
    
        construct_ball();

        my_ball.set_spawn();

    }


    Conduct_ball() 
    {
        my_ball_speed = 10;
        my_ball_size = 10;
    
        construct_ball();

        my_ball.set_spawn();
    }



    void construct_ball()
    {
        // Outer class
        my_ball = new Class_Ball(my_ball_speed, my_ball_size);
        // Inner class
        my_ball_collides = my_ball.new Collides();
    }




    void draw() 
    {

        my_ball_collides.bounce_x_bounce_y();

        // if (my_ball_collides.spooky_x_bounce_y())
        // {
        //     construct_ball();
        //     my_ball.set_spawn();
        // }

        my_ball.move();
        my_ball.draw();
    }

}

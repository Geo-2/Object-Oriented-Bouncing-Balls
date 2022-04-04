/*
This is the director. It manages the ball. 


*/

class Manager_of_balls
{
    
    
    Manager_of_balls()
    {
    }

    // Interates, and checks each ball
    // spawns the ball
    // Destroys the ball.
    // Updates the balls.

    void start()
    {
        // Setup first ball
            ArrayList<Class_Ball> array_balls;
            array_balls = new ArrayList<Class_Ball>();
            array_balls.add(new Class_Ball());
                // Define the array of balls

            Class_Ball single_ball = array_balls.get(0);
            single_ball.set_spawn();
                // Get single ball

        

        if (single_ball.collision_and_movement() == true)
        {
            array_balls.remove(0);
            println("True!!");
        }
        else 
        {
            single_ball.draw();
        }

        // for (int i = array_balls.size()-1; i >= 0 ; i--)
        
    }

}
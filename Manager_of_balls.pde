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

    ArrayList<Class_Ball> initialize()
    {
        // Setup array only once.
        ArrayList<Class_Ball> array_balls;
        array_balls = new ArrayList<Class_Ball>();
    
        spawn_ball(array_balls);

        return array_balls;
    }

    ArrayList<Class_Ball> spawn_ball(ArrayList<Class_Ball> array_balls)
    {
        array_balls.add(new Class_Ball());

        Class_Ball temp_single_ball = array_balls.get(0);
        temp_single_ball.set_spawn();

        return array_balls;
    }


    void check(ArrayList<Class_Ball> array_balls)
    {
        Class_Ball single_ball = array_balls.get(0);

        if (single_ball.collision_and_movement() == true)
        {
            array_balls.remove(0);

            spawn_ball(array_balls);

            println("True!!");
        }
        else 
        {
            single_ball.draw();
        }

        // for (int i = array_balls.size()-1; i >= 0 ; i--)

    }
}
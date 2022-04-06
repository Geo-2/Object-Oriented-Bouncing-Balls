/*
This is the director. It manages the ball. 

Define your type of ball that you want to spawn. 

*/

class Manager_of_balls
{
    
    
    Manager_of_balls()
    {
        
    }


    ArrayList<Class_Ball> initialize_array()
    {
        // Setup array only once.
        ArrayList<Class_Ball> array_balls;
        array_balls = new ArrayList<Class_Ball>();
    
        // spawn_ball(array_balls);

        return array_balls;
    }

    ArrayList<Class_Ball> spawn_ball(ArrayList<Class_Ball> array_balls)
    {
        array_balls.add(new Class_Ball());

        Class_Ball temp_single_ball = array_balls.get(0);
        temp_single_ball.set_spawn();

        return array_balls;
    }

    ArrayList<Class_Ball> move_balls(ArrayList<Class_Ball> array_balls)
    {
        // Go back in reverse order. 
        for (int i=array_balls.size()-1; i>=0; i--)
        {
            single_ball = array_balls.get(i);

            single_ball
        }
    }

    boolean balls_collide(ArrayList<Class_Ball> array_balls)
    {

        for (int i = array_balls.size()-1; i >= 0 ; i--)
        {
            Class_Ball single_ball = array_balls.get(i);

            if (single_ball.collision_and_movement() == true)
            {
                return true;
            }

            println(i);

        }

        return false;
    }
}
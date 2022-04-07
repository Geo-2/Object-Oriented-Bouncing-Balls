ArrayList<Conduct_ball> array_balls = new ArrayList<Conduct_ball>();

class Array_balls
{
    Array_balls() {
    }

    void add_ball(int temp_speed, int temp_size)
    {
        array_balls.add(new Conduct_ball(temp_speed, temp_size));

    }


    void draw() 
    {


        for (int i = array_balls.size()-1; i >= 0; i = i - 1)
        {
            Conduct_ball single_conduct_ball = array_balls.get(i);


            single_conduct_ball.draw();

        }


    }
}
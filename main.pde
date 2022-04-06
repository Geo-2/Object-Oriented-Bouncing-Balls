
ArrayList<Conduct_ball> array_balls = new ArrayList<Conduct_ball>();


void setup() 
{
    size(512, 512);

    array_balls.add(new Conduct_ball(1));
    array_balls.add(new Conduct_ball(1, 50));
    
}



void draw() 
{
    background(255);    


    for (int i = array_balls.size()-1; i >= 0; i = i - 1)
    {
        Conduct_ball single_conduct_ball = array_balls.get(i);


        single_conduct_ball.draw();

    }


}
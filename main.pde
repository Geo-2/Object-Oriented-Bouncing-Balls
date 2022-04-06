Conduct_ball my_conduct_ball;

void setup() 
{
    size(512, 512);

    my_conduct_ball = new Conduct_ball();

    my_conduct_ball.construct_ball();
}


void draw() 
{
    background(255);    

    my_conduct_ball.draw();

}
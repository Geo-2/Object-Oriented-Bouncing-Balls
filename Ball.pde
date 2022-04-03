class Ball
{

    int x;
    int y;
    
    // Construct the optional variables. 
    Ball()
    {

    }

    // random_direction. This is the built in function to move at a random angle, if you dont want to supply the randomness yourself. It is intended to go into the move function. 

    // Move function.
        // This function will move the ball in a variable "direction", each time it is called. It has the parameter called speed, which will detirmine how fast it moves. 

    void set_spawn()
    {
        int random;

        random = height/8;
            // The deviation intended for the y co-ordinate.


        x = width/2;
        y = int(height/2 + random(-random, random));
    }

    
        boolean bounce_status_boolean;

        void move(int speed)
        {
            if (bounce_status_boolean == false)
            {
                x = x + speed;
                y = y + speed;
            }
            else if (bounce_status_boolean == true)
            {
                x = x + speed * -1;
                y = y + speed * -1;
            }
        }

        void bounce()
        {
            if (bounce_status_boolean == false)
            {
                bounce_status_boolean = true;
            }
            else if (bounce_status_boolean == true)
            {
                bounce_status_boolean = false;
            }            
        }

    // Edge Collison function. 
        // This function will check if the ball has reached the edges of the screen. It has the optional parameter of which edge of the screen. This returns a boolean. Yes, I could have used distance, but what about the orintation? This solves it without orientation.


        

        /*
               c
        A ____________B
          \          /
           \        /
          b \      / a
             \    /
              \  /
               *
               C
    
            C vertex is the ball.
        */
        // Input: (Begining of line,   End of the line)
        boolean edge(int _Ax,int _Ay,    int _Bx,int _By)
        {
        
            // Define C Vertex as the ball object. This helps to be more specific.
    
                int _Cx = x;
                int _Cy = y;
    
            // Define Triangle Distance
                int c = int(dist(_Ax, _Ay, _Bx, _By));
                    //Find c distance
    
                int b = int(dist(_Ax, _Ay, _Cx, _Cy));
                    //Find b distance
    
                int a = int(dist(_Cx, _Cy, _Bx, _By));
                    //Find a distance
    
                int object_distance = b + a;
                    // Combine distance
    
        
            // Debug
                println("Object Distance:" + object_distance);
                println("Line Distance:" + c);
                
                // strokeWeight(50);
                line(_Ax, _Ay, _Bx, _By);


            // Check distance. If the object is on the line, it is true. I will adjust it later, so it has a width line tolerence, by variable `size`.
                if (object_distance == c)
                {
                    println("yes");
                    return true;
                }
                else
                {
                    println("no");
                    return false;
                }        
    
        }


    void draw() 
    {
        int size = 20;
        ellipse(x, y, size, size);
    }   

}
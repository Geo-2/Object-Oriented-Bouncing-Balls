/* This class, was designed with the idea of modularity and control. Want to combine functions, or mess around with stuff in a crazy order? Sure! Why not!

Here's how the function is intended to be used. 

- spawn the ball

- find the random direction for the ball

- move the ball (giving that direction)

- Check for collision. If true then:

- "bounce" the ball. 


I mean, if you want to add some crazy powerups like speeding up the ball, or bouncing in a random direction, go ahead. The bounch function will just normally bounce the ball by default, so one will have to program one's own function for that. 

*/

class Ball
{
    // Set variables.

        int x;
        int y;
            // Location of ball.

        int size;
            // What is the size of the ball?

    // Construct the optional variables. 
    Ball(int temp_size)
    {
        // It turns out, that java doesn't seem to have simple optional parameters like C++. All one would need for those would be (int temp_size = 20). I guess I can stick with method overloading in java. https://stackoverflow.com/questions/965690/how-do-i-use-optional-parameters-in-java#12994104

        size = temp_size;

    }


    // This sets the spawn of where the circle first ends up. When called, it will spawn in a specific pattern. It will spawn in the center of the screen. However, it will deviate on the 4 co-ordinates relitive to 4 divisons of the screen. Even if one were to resize the screen, this function will still work, as intended. 
    void set_spawn()
    {
        // This was old code from when I was setting up draw. This is a reference of how I am going to set it up.
        // {
        // int size = 20;
        // int random = height/4;

        // ellipse(width/2, height/2 + random(-random, random), size, size);
        // }
        

        // =================================================================


        int random;
            // Used for where the ball will spawn on the screen.

        random = height/8;
            // The deviation intended for the y co-ordinate.

        // Set location

            x = width/2;

            y = int(height/2 + random(-random, random));

    }   


    // random_direction. This is the built in function to move at a random angle, if you dont want to supply the randomness yourself. It is intended to go into the move function. 

    // Move function.
    // This function will move the ball in a variable "direction", each time it is called. It has the parameter called speed, which will detirmine how fast it moves. 
    /*
        I only have 30 minutes left, and I need to code a very basic version of this function for now. I know I can solve this using triangles, since in what direction also involves the xy,AHHHH gee wizh just do it. 
    */

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
            // Good old fasined toggle switch for the move function. 
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
            

            // Check if ball hit Inside rectangle .

                hit_ceiling = my_ball.edge(x, y,   x + size, y);

                hit_floor =   my_ball.edge(x, y + size,   x + size, y + size);
                hit_left_wall =    my_ball.edge(x, y,   x, y + size);

                hit_right_wall =   my_ball.edge(x + size, y,   x + size, y + size);

        }
        

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
    
    
            // Check distance. If the object is on the line, it is true. I will adjust it later, so it has a width line tolerence, by variable `size`.
    
                // Debug
                    println("Object Distance:" + object_distance);
                    println("Line Distance:" + c);
                    
                    // strokeWeight(50);
                    line(_Ax, _Ay, _Bx, _By);
    
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



    // After everything is well said, and done, draw it. Should be at the end of every function. 
    void draw() 
    {
        ellipse(x, y, size, size);
    }

    
    // This was a temp function while I was testing to get the object working first. Thanks to this approch, along side a few hiccups, it went smoothly. 
    // void test()
    // {
    //     println("test");
    // }
}
// Credit to `https://processing.org/examples/bounce.html`. Helped out with the walls collision, and pysics of a simple ball.

// Credit to `https://www.youtube.com/watch?v=Etk4zQHBplI&ab_channel=AlexLee`. He helped me out with creating a nested class object. I thought, once the meta object was called, one could access the main classes. Java doesn't happen to work that way. 
// The outside object has to be made, then the inside object needs to be made from that one. Doesn't completly meet my understanding, but it's a start.

// Credit to `https://www.youtube.com/watch?v=BwkmIXjWWJc&ab_channel=CodingwithJohn`. He helped me out with creating a nested class that belonged to a class. I thought java does this be default, but it does not. Ahk does, java does not. Solution?

    // Non static inner class. 
    // Outerclass outer            = new OuterClass();
    // OuterClass.InnerClass inner = outer.new InnerClass();

    // Static inner class
    // Outerclass outer            = new OuterClass();
    // OuterClass.InnerClass inner = new OuterClass.InnerClass();

    // The problem is, this creates a whole new ball object, and I'm worried if it copies the global location, or refers to it. I don't know yet. No, I just tested it, and it works fine.

/*
This function was designed with the idea that you manage it. It simplifies all the parameters into functions that you can call yourself. 

This function only checks collision with the 'walls' of the screen. It does not check for self made collision boxes.

For example, the collision function:
    Here are some things you could do with this function...
    - You can change the direction.
    - You can "spawn the ball" when it is done, or simply just remove this object.
    etc, you can do score and stuff based on the ball, and the envioment that matters to it.  

    Use the function that is meant specifically that helps your use case. If you just want it to change the direction all around, just use collide(). If you want to be specific about which wall, check out the collides_with_wall().


### Programmer notes:

I still have to make the function to program the change in direction, and document it. Right now I am working on the movement.
*/



class Class_Ball
{

    int x;
    int y;

    int default_speed = 1;
    int xspeed;
    int yspeed;

    int xdirection = 1;
    int ydirection = 1;


    int radius;

    Class_Ball(int temp_speed, int temp_radius)
    {

        xspeed = temp_speed;
        yspeed = temp_speed;

        radius = temp_radius;
    }

    Class_Ball(int temp_xspeed, int temp_yspeed, int temp_radius)
    {

        xspeed = temp_xspeed;
        yspeed = temp_yspeed;

        radius = temp_radius;
    }

    Class_Ball()
    {

        xspeed = default_speed;
        yspeed = default_speed;

        radius = 40;
    }


    void set_spawn()
    {
        int random;

        random = height/8;
            // The deviation intended for the y co-ordinate.


        x = width/2;
        y = int(height/2 + random(-random, random));
    }

    class Collides
    {

        // If it hits the 'spooky' walls on the x axis, it will return true. Otherwise, it will bounce, then return false.
        // This name was a good memonic if the left and right walls are suspicious...
        boolean spooky_x_bounce_y()
        {
            if (x > width-radius || x < radius) {
                return true;
            }
            else if (y > height-radius || y < radius) {
                ydirection *= -1;
            }

            return false;
        }

        // This function is just meant to check generally if it hit a wall. 
        boolean simple()
        {

            // Test to see if the shape exceeds the boundaries of the screen.
            if (x > width-radius || x < radius) {
                return true;
            }
            if (y > height-radius || y < radius) {
                return false;
            }

            return false;
        }

        // This is meant to be used with an if statement. This is a very manual way of knowing which wall is bouncing from. To use this function, one would have to check each wall. This function is used to check which wall was hit. These commands are seperated appropriately, since it may bounce into the corner, but it would be impractical to hit both the left and right wall. Likewise with the top and bottom. The first thing I would check, if it didn't hit any walls, that way the computer doesn't have to do any extra work.
        // Here is a template:
        // else if (my_ball.collides_with_wall() == "")
        String verbose()
        {
            // Check left wall
            if (x < radius) {
                return "left-wall";
            }
            // Otherwise, check right wall
            else if (x > width-radius)
            {
                return "right-wall";
            }
            
            
            // Check top wall
            if (y < radius) {
                return "top-wall";
            }
            // Otherwise, check bottom wall
            else if (y > height-radius) {
                return "bottom-wall";
            }

            // Otherwise, it hasn't seen any walls.
            return "no-walls";
        }

    }

    // A simple function to "bounce". Incidence angle is exact to exit angle. If you want to get more specific about which direction, one can code that in. 
    void bounce()
    {
        xdirection *= -1;    
        ydirection *= -1;
    }


    void move()
    {
        x = x + ( xspeed * xdirection );
        y = y + ( yspeed * ydirection );

    }


    void draw() 
    {
        int size = radius * 2;
        ellipse(x, y, size, size);
    }   

}
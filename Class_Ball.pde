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

    Class_Ball(int temp_radius)
    {

        xspeed = default_speed;
        yspeed = default_speed;

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


    boolean collision_and_movement()
    {
        // Credit to https://processing.org/examples/bounce.html

        // Movement
        x = x + ( xspeed * xdirection );
        y = y + ( yspeed * ydirection );
        
        // Test to see if the shape exceeds the boundaries of the screen.
        if (x > width-radius || x < radius) {
            xdirection *= -1;
            return true;
        }
        if (y > height-radius || y < radius) {
            ydirection *= -1;
            return false;
        }

        return false;

    }
      
    void draw() 
    {
        int size = radius * 2;
        ellipse(x, y, size, size);
    }   

}
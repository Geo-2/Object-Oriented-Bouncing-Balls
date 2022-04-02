## 29-03-2022 11:40:57 AM

It has been 30 minutes in since I started this project. Right now it is working smoothly. 

### Here's what I have done so far:

- Create a program that spawns a ball object at a random position vertically at the centre of the screen.
    - I first started out in draw. Then I moved the program to an object, since it is a contained place for where all the stuff interacts with. Took a while to set that up, but was well worth it.

### What's next for the next 30 minutes?

- Comment what you have for easy understanding for others first. ✅
    > I actually moved some variables inside functions to contain them at this step. The code looks much more freinly to those who picked up the project. 

    I had also, moved the class into it's own file. 

- spawn the ball once. Have the ball move in a random direction. Redraw the background, to get rid of ghosting.

#### What did I do anyways?

- I commented the functions and planned out how it is going to be used. Instead of hacking away at it, I planned what the functions are going to be, since in order to have the ball move in a random direction, that is multiple things to achive at the same time. 

- I also commented the class function as well. 


Alright, the hour is up! Perhaps I should take a break, or perhaps I could message wright on the progress. 


## 30-03-2022 11:28:34 AM

### Notes

I should tell the function what to collide with, not the function do it on it's own. That makes for some modularity. If there's an object on the way, it should check for it. 


I will program in a box collision checker for simplicity. 

It should be checking for which line to hit. 


What if I made the ball function, a particle function, in which it can be any shape, colliding with each other. It would be simple, since the parameters would be already defined when created, and easy to compare. The only thing would be that to create a circle, would be complicated, and I could just define that as circle, and leave it as that. If I design this, then I can simply create any shape that stores its values, and checks each other. I think it would be a handy function, but for this program, it would be out of scope. 


Ah, just thought of a solution. What if we subtract all of the vertiies that are created, from the offending vert? Any vert that is less than the compared vert, then it is inside. Oh no, I think I'm getting sidetracked here. 

I think what I am doing is imagining, and planning a solution, which is good. However, it's not good for an assignment like this. The issue is, It doesn't need a collision like that, it only needs to check the edge of something which is a parameter. 

Don't be afraid of long functions that handle things, it actually makes things simplier. Don't start making a huge sprawl of functions to make that function work. 


Let's start at the basics. 
> ah, I see, I was seeing if I could make an elegant solution of a collision system. That's not the problem that I'm being credited to solve. 



What Questions do I need to anwer to solve this problem?
- Which wall is it?
    If it is the top wall, then just compare the y co-ordinates if they go below zero. 
    If it is the bottom wall, then check the y co-ordinates if they go past the screen height. 

    If it is the left wall, compare the x co-ordinates if they go below zero. 
    If it is the right wall, compare the x co-ordinates if they go past width. 

    else, don't proceed, your job is done. 

    > This is all in a `else if` function, since if any of them go off, then the computer doesn't need to keep checking. 
    > this reminds me of a bug in super mario 64, and someone fixed the collision system to make it work. I might want to re-watch that video again. 

- What should I do, if it's true? 

    If it was the top or bottom wall, then bounce. 

    If it was the left or right wall, then 

- how far away from wall?

====

The x distance past exceeds, then true. just what orientation? 

Triangles would solve the orientation problem, since it would work, no matter which way it is. 

The computer can mesure, and solve for distance, and then I can compare the distance.  


This doesn't solve which orientation it is, but it does solve if a line has gone over. 

And since if we define that line, we can know if it is the top, or the bottom, or the side. __We can simply `draw the line`, and check if it is there.__

This works better than indivisual solutions knotted together for each line.

Also, we can't really test this until I program the movement function. Oh well, i'll just move it diaginally by one, by default, instead of knowing where to lauch it from

> I am going for two hours of work in the assignment. there is only 30 minutes left.

The 30 minutes is up. I have worked for two hours total. I am on a roll. Lets work for an extra 30 minutes. Right now I am programming the function from the reference. 

It has now been 2 hours and 30 minutes. I have programmed it, but it seemed like I didn't tell the computer my logic correctly. I should go back, and test every component, to see if it is working. Time for an extra 30 minutes.

Ohh, I think I found it. I manually compared it myself, with the printline command. It seems that it cannot see the vaule in time, when it goes fast. The logic works, when I delay it by 100. It's because I think I am moving the ball, then checking it. I wonder what would happen if I move these. Yes, it works. I had to check where the ball is, then move it. 

Not only the logic that tests that if it was true or false flawed, but the bouncing function is flawed as well. It's supposed to change the movement, not where it is!

! I just realize something, It's minus the size, because it's closer to the square. I'll add that later. 

Ok, I've been working for 3 hours so far. I wouldn't mind working another 30 minutes to work why on earth the if and the boolean will not solve. Oh, I've solved it. I've made it even simpler by resolving the expresion to a variable to check. It turns out, the problem was placing these `:;` in the wrong places. I've had to ask myself, what did I tell the computer wrong. The computer's compiler doesn't do a very good job at locating misplaced semicolons. `error near ... parameter declaration`

I've got it to work! YAAAAAAAAAYYYYY. Feels awesome! I feel estatic. 

Welp, I've fullfilled the 3rd and 4th kernel:
```
- Have the ball bounce off of the top and bottoms of the screen.

- If the ball reaches the left or right side of the screen it will disappear, and a new ball will be spawned.
```

But there's a bug. It likes to escape out the corner. 

I'm programing a function to increase speed, and lower speed to get a better look at this. 

I've been working for 3 hours and 30 minutes. 

Meh another 30 minnutes. I think I've been working for four hours. 

I think I'm actidentally working too long. Or maybe I enjoy this work.. hmm. 

I think I need a break. My `hacking away at things detector` is going off. Ok, last I was working on things, is constructing a collision box inside, but it broke. 

Set.. I';ve worked for 4 hours and 10 minutes. 

Alrighty, I'm back from my break of getting gas. Either I could continue, or I can call it a day. Let's first wrap up that box collision, it should take about 10 minutes. 

Done, I've made a collision box function. The original `misalignment` glitch is still there. it just rarely occurs. 
10 mins gone by


Alright, I think I should add a class for this, as it would fit nicely in a class. Let's call it, collider
spending another 10 

I didn't put it in another object, since that would make speget dependency, and kindom of nouns. Instead, I put it in it's own libary.

done spending 10 mins. 

I think I would like to call it a day, perhaps. I don't want to spend all my day on computer science. I've got english. Time to type out a draft update for wright. 


# 01-04-2022 7:41:17 PM

https://www.geeksforgeeks.org/classes-objects-java/

I've found a function called clone, which will clone an object. 

However, this is not practical for this kind of application. Instead, I should use a ball manager, that keep track of multiple genererated spawned ball co-ordinates. 

I think I should use a class that is specifically meant to define a ball, and a class to check if the ball is overlapping. Hmm. 

What if there was a `myball.add`... It's hard to think of a way to design with this. I could clone it, which would mean that there would be more balls to draw a line for, etc. 

Basically, it makes a line, and then checks if the ball is in that line, returns true or false. 
The make box function, will make multiple lines, and get all of their boolean results.

If I simply clone it, and track them via interation, it should be able to call it. I just don't know how the syntax will work. Eh, cloning is confusing, and It's probably not what I am going for. 


What if I were to create balls based off of arrays? It makes sense. I simply would need to store the co-ordinates of these balls in the array. Each time I want to add a new ball, I can simply add to the array. 

I would have to update the draw function to check for each ball in the array, and see if any of them is bounching. oh. That's where it gets complicated. Then I would have to iterativly check each of them, seeing if they are bouncing. 
# Game Programming 2020-2021

Resources
---------
* [Processing](http://processing.org)
* [Processing reference](https://processing.org/reference/)
* [The Coding Train](https://www.youtube.com/channel/UCvjgXvBlbQiydffZU7m1_aw)
* [The Nature of Code](http://natureofcode.com/)
* [Games Fleadh](http://www.gamesfleadh.ie/)

## Past Exams
- [End of year Lab Test 2019](https://github.com/skooter500/GP-LabTest2-2019)
- [Supplemental Lab Test 2019](https://github.com/skooter500/gp2019-august-lab-test)
- [Supplemental Lab Test 2018](https://github.com/skooter500/GP-Autumn-Lab-Test-2018)
- [Lab Test 1 2016](https://github.com/skooter500/GP_Lab_Test_1)
- [Supplemental lab test 2 2016](https://github.com/skooter500/DT508-Lab-Test-Supplemental-2016)
- [End of year lab test 2016 Solution](https://github.com/skooter500/DT508-Lab-Test-Solution-2016)
- [Lab Test 1 2015](https://github.com/skooter500/dt508_2015_labtest1)

## Contact the lecturer
* Email: bryan.duggan@tublin.ie
* Twitter: [@skooter500](http://twitter.com/skooter500)
* [My website & other ways to contact me](http://bryanduggan.org)

## Assignments

- Monday 7th - Assignment 1 submission 15%
- Monday 14th - December Lab Test 25%
- Assignment 2 - 15%
- Assignment 3 - 20% - Week 10 Semester 2
- End of Year lab test - 25% - TBC 

## Week 6 - Loops

- Practice generating lots of different shapes with loops in processing
- Be creative and make something beautiful in code

Draw the following shapes. Use variables and loops in your solutions!

I'ts best to spend some time thinking about the variables and how they are changing before writing code:

These require ONE loop:

![Sketch](images/p21.png)

This shape draws lines from the sides that all meet in the middle. This can be done using one loop, but is better with two:

![Sketch](images/p19.png)

This sketch always draws 10 equally sized circles across the screen. This should work no matter what you set the screen size to. You should also declare a variable to hold the number of circles to draw so that if you change this number, the sketch should still work:

![Sketch](images/p18.png)

This sketch places circles around the outside of a bigger circle to make a flower pattern. Once you figure this out, you can modify it to do something cool with colours:

![Sketch](images/p20.png)

This sketch prints the numbers of the clock around in a circle:

![Sketch](images/p22.png)

This sketch requires you to put one loop inside another and also use a boolean variable, though there are other ways to do this:

![Sketch](images/p23.png)

This is what it looks like when all the above code is in one sketch:

![Sketch](images/p24.png)

Try and draw this using ONE for loop:

![Sketch](images/p27.png)

Write a sketch that can draw regular polygons like squares, pentagons, octogons etc:

![Sketch](images/p10.png)

Write a sketch that can draw stars like these:

![Sketch](images/p29.png)

Use a for loop, rect and HSB colours to draw this:

![Sketch](images/p31.png)

Use sin and cos to draw this:

![Sketch](images/p30.png)

Use a loop and the HSB colour space:

![Sketch](images/p33.png)

Use ellipse to draw this:

![Sketch](images/p34.png)

Use a nested loop (a loop inside a loop) to draw this:

![Sketch](images/p32.png)

## Week 5 - BugZap
- [Full source code for BugZap](https://github.com/skooter500/BugZap/)
- [Moving letters library](https://drive.google.com/open?id=1zXtP8-P2-kE6aVsC2dTwhR2fooC60TfZ) - Install this into the ```Documents\Processing\libraries\movingletters\library``` folder on your computer


### Semester 1 

## Week 4 - The if statement

[![YouTube](http://img.youtube.com/vi/mVq7Ms01RjA/0.jpg)](https://www.youtube.com/watch?v=mVq7Ms01RjA)


Exercises
- Left side right of screen exercise
- 4 Quadrants exercise
- Rectangle rollover
- Inside a circle
- Ball left & right
- Ball bounce around the screen
- Keyboard handling
- State

Part 1

- [Download and unzip the starter project for today's lab](https://github.com/skooter500/GP-2017-2018/blob/master/downloads/rick_n_morty_starter.zip?raw=true) 
- Open the sketch and you will see that it displays a picture from Rick and Morty
- The aim of the lab today is to modify the sketch so that it displays a button in the center of the screen
- When the button is clicked, it should change colour and play the sound file. Here is what the finished sketch should look like:

[![YouTube](http://img.youtube.com/vi/BR1p2Dl6ELE/0.jpg)](https://www.youtube.com/watch?v=BR1p2Dl6ELE)

- To do this you will need to declare some new varialbes and use the if statement

Part 2

Try and make this sketch that draws a face that starts in the center of the screen and moves to the edge of the screen and then follows around the outside of the screen

[![YouTube](http://img.youtube.com/vi/lA-3AROmMiE/0.jpg)](https://www.youtube.com/watch?v=lA-3AROmMiE)


# Week 3 - Using variables and trigonometric functions
- [Trigonometry problem set](https://1.cdn.edl.io/IDqRlI8C9dRkoqehbbdHBrcGT6m87gkCQuMKTkp0U7JvHvuG.pdf)

## Lab
### Learning Outcomes
- Use numeric variables in a sketch
- Use operatorts on variables
- Use trigonometry
- Make beautiful things

A person flying a kite has released 176m of string. The string makes an angle of 27° with the ground. How high is the kite? How far away is the kite horizontally?
Write a processing sketch sketch to draw and solve the problem.
  - Solve the problem on paper first
  - Make variables for stringLen, theta, kHeight, kDist and any other variables you need
  - Assign the values that you know to the variables
  - Write code to calculate the kith height and horizontal distance values
  - Write code to draw the scenario

![image](images/p28.png)

You can use the function [text](https://processing.org/reference/text_.html) to print text to the screen and [nf](https://processing.org/reference/nf_.html) to format a number to a certain number of dp's. For example ```text("Price: " + nf(p, 10, 2), 10, 50)```. You can look these functions up in the Processing reference.

### Part 2 - Spiral Jam

Experiment with the spirals sketch and see what kind of crazy beautiful spirals you can make. Use variables for colour gradients, use different shapes etc etc.


# Week 2 - Using variables
### Learning Outcomes
- Practice drawing
- Learn how to use operators with variables

# Part 1

Here is a youtube video of 4 sketches you can program today:

[![YouTube](http://img.youtube.com/vi/kPOFqXsLLeo/0.jpg)](https://www.youtube.com/watch?v=kPOFqXsLLeo)

In your solution use the following processing functions:
- fill
- rect
- ellipse
- background
- stroke
- noStroke

And the mouseX and mouseY varibles. You can also use the + - * / operators

# Part 2

[![YouTube](http://img.youtube.com/vi/uvPVGiU-bn4/0.jpg)](https://www.youtube.com/watch?v=uvPVGiU-bn4)

What is happening:

- The ground takes up half the window size
- The spaceship is 100 pixels wide and is *centered* around the mouse position.
- The person starts at the right side of the screen and moved from right to left

Use variables wherever practical in your sketch and calculate positions and sizes relative to these variables.

Bonus!

There are few things you can try (but you will probably have to read ahead and figure out how the if statement works)

- Come up with a more beautiful looking spaceship and person
- Change the colours of everything
- Make a car that drives from left to right
- When the person reaches the left side of the screen, he should switch direction
- Make the lights on the spaceship flash different colours


# Week 1

## Lecture

[![Video](http://img.youtube.com/vi/2VLaIr5Ckbs/0.jpg)](http://www.youtube.com/watch?2VLaIr5Ckbs)

## Lab

### Learning Outcomes
- Know good online resources
- Check out previous student work
- Learn how to draw using Processing
- Become familiar with writing and running sketches

### Instructions
- Check out [the Processing reference](https://processing.org/reference/)
- Check out [The Coding Train](https://www.youtube.com/channel/UCvjgXvBlbQiydffZU7m1_aw)
- Check out [these Sci-Fi user interfaces made by last years OOP students](https://www.youtube.com/playlist?list=PL1n0B6z4e_E5RZYrubD2pcxq0qzGy-3vr)
- Check out [these music visualisers made in Processing by previous programming students](https://www.youtube.com/watch?v=NGQbYEESZEg&list=PL1n0B6z4e_E7I2bIWWpH8NAa6kPx95sw5)
- If you are curious, check out [some of my creature videos](https://www.youtube.com/watch?v=cW8s5i9dmqA&list=PL1n0B6z4e_E6jErrS0ScSCaVrN7KV729x)
- Look up the following methods in the Processing reference to make sure you are clear about the syntax and parameters:
    - noStroke
    - noFill
    - line
    - ellipse
    - rect
    - background
    - stroke
    - fill
    - size
    - arc
    - triangle

Write sketches to draw the following shapes:

![Sketch](images/p1.png)

![Sketch](images/p1.1.png)

![Sketch](images/zoog.png)

![Sketch](images/pizza.png)

![Sketch](images/p1.2.png)
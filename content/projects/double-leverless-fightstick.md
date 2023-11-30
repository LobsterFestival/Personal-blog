+++
title = 'Double Leverless Fightstick'
date = 2023-11-24T13:32:12-08:00
draft = false
author = "Jeremy Locatelli"
tags = ["gaming", "arcade", "fightstick"]
+++

My idea for solving my practice issue with engineering was this. As mentioned in the previous article, "piano"ing my fingers from pinky to index finger was pretty consistent, but going the other way was much more difficult fo me. So what if instead of one row of directional inputs, there were two! The top row would have the right and left directional buttons reversed, so the same ring->middle->index finger motion could be done on either row, but one would be a forward motion, and one would be the backwards motion (depending on what side of the screen you are on of course!) 

I felt pretty confident in my design idea, so I took the official Hitbox layout template and simply duplicated the 3 24mm buttons used for left-down-right and placed them above the existing row. 

{{< figure src="/fightstick/labeledTemplate.png" caption="*Double Leverless Template with button labels*" >}}

But this time I wanted to make something more sturdy than just a cardboard box. I decided to make a simple pine box frame, with the top and bottom plates being MDF board. For the internals I'd have a few chunks of pine act as supports around the areas where the buttons would be cut out. 

First the frame. The back board would have to be drilled with holes for the USB cable, start and share buttons, plus another button for the home buttons used on some consoles. A few clamps and a bore bit on an electric drill and I was ready to glue and clamp my boards into a basic square frame. I was worried that the corners of the frame would need extra reinforcement to prevent it from skewing and becoming a rhombus over time. But so far it has shown no sign of that.

{{< figure src="/fightstick/fsFrameClamp2.jpg" caption="*Backplate holes cut and frame clamped*" >}}

The harder part was making sure I could cut the template holes correctly in the top MDF board. I bought a full set of new screw hole Sanwa buttons from
[Paradise Arcade Shop](https://paradisearcadeshop.com/). I chose these as with the 2mm MDF, I wanted a tight consistent fit for all the buttons.
I opted to cutout the template holes again, and after measuring from the sides to determine center placement for the template. Now it was just a matter of drilling the holes. I bought enough MDF to have 3 sheets that could be cut to fit the frame, but I really didn't want to have to redo this process. 

Luckily, things went pretty smooth and I was able to cut all the buttons holes out with a good tolerance considering I was using a handheld electric drill pushing down into an old apple box at my parents house! 

{{< figure src="/fightstick/FSTopHoles.jpg" caption="*Looking pretty good!*" >}}

Now here was oversight number 1 in this project. I built my last leverless controllers using the buttons I had from other fightsticks and projects. These were standard Wing-Type Sanwas, with serated tabs that snap into and push against the top board to lock into place. So the barrel of the button is thinner than the widest part of the button. This is not true with a screw type! The screw collar is well, a circle that encases the button barrel. I got **very** lucky as I managed to drill all my holes accurate enough that all the buttons were able to be screwed in together without binding or colliding. 

Now was the simple task of glueing the top to the frame, which I would then hammer in penny nails along the edges to keep it more secure. An ancient Dell Server in the garage would work perfect as weight to clamp the glue down. 

{{< figure src="/fightstick/FSTopClamp.jpg" caption="*This worked perfect, thanks Dell!*">}}
{{< figure src="/fightstick/FSButtonsUnder.jpg" caption="*Paper thin clearance on these!*">}}

But I have to say, I was so happy with how this turned out. It just looks so clean! 

{{< figure src="/fightstick/fsTOP.jpg" caption="*How could I not have a Golden Jump Button?*">}}

The wiring for this was identical to the cardboard leverless controller I made, with the exception of adding the new row to the existing Left-Down-Right inputs. I still used a small breadboard with the Pi Pico on it, so doubling these inputs was simple. I also reused the wire harness' from the last project as I wanted to hop right into Street Fighter and not spend another 40 minutes heatshrinking jumper wires :)

This project was a fun way to spend a weekend, and the end result was a functional, sturdy and unique leverless controller that has caught a lot of attention at local tournaments. While I do not use it as my main arcade controller by any means, its a fun part of my collection and I learned a ton while making it.

Patience is key, double check your measurements, then check them again. 


+++
title = 'Leverless Fightstick'
date = 2023-11-23T11:26:27-08:00
draft = false
author = "Jeremy Locatelli"
tags = ["gaming", "arcade", "fightstick"]
+++

I've been playing fighting games since the release of Street Fighter IV, (also known as an '09er, sorry!) and have always used a traditional arcade stick
to play all manner of fighting games. A stick, a square gate and 8 buttons against the world. Plus I could use my fight stick to play as many MAME games as I wanted to! But for a long time now there has been other options for controlling your big guy on screen. Some people still play on default pads. Some use fight pads with a bigger d-pad and inline buttons, akin to a arcade stick. But some people left the world of opposing cardinal directions behind, forging a path into the unknown with a flat sheet of buttons. 

I've been drawn towards leverless controllers since I fight found out about them 10 years ago, but the cost and learning curve was always a barrier to me.
But the thought of how cool it would be to just become one with the peripheral, both hands flat and slapping Sanwas to perfectly execute a devastating mix? I couldn't resist. 

With the release of Street Fighter 6, the game that came after Street Fighter 4 :), I decided maybe it was time, New Game, New Me. I already picked Zangief as my main, and was already comfortable churning 360s and 720s to piledrive fools that got to close, but what if I was better. What if I could standing 360, or hell 720 like a player using Street Fighter 6's Modern Control scheme. I'd be nigh unstoppable, a force of nature, scooping scrubs and hearing the laments of "WHAT THAT KILLED???" as they get hit with level 3 at half health again. It was too much to resist. 
Spoilers this didn't happen.

"Well", I thought.
I'm an engineer, instead of dropping $200+ on a hitbox or one of the 100s of boutique leverless controllers out there, I could just build one!
Like any embedded engineer worth their salt, I have approximately 7 unused Raspberry Pi products for other projects that also have dreams of appearing on this blog. And the perfect tool I needed was right there. The Raspberry Pi Pico, RP2040 chip, fast, powerful, and dirt cheap. I soldered some headers onto it, flashed it with micropython base image and started researching. 
{{< figure src="/fightstick/pipico.jpg" >}}
Naturally, I chose the hardest path first, just write your own controller firmware, wire up GPIOs to map to generic gamepad inputs and done, I'll have a working PC controller. About 20 minutes into that, I instead looked up if there were already any open source RP2040 controller firmwares. Hey! Theres a few, and boy are they feature rich. I settled on the [GP2040-CE](https://github.com/OpenStickCommunity/GP2040-CE) as it was well supported, had excellent documentation, and a boatload of features. I highly, highly recommend this for anyone that wants to create custom gamepad interface devices. 

The first task was to build a little prototype, something simple to get started with interfacing with the device and get a punch to happen on screen when I hit a button. So with the spirit of [Anklegator](https://www.youtube.com/watch?v=iM_rHJM6pFQ) guiding me, it was time to find a cardboard box. A small return box for an iPad repair I never sent in would work perfectly. Theres a ton of templates available online for fightstick/leverless controllers, but since I was going to use buttons from a couple of other fight sticks laying around, I chose the [SnackBox Big Hand](https://focusattack.com/artwork-print-and-cut-for-junk-food-arcades-snackbox-button-only-big-hands-panel/) template as there wasn't enough 24mm buttons to spare. It'd have to be all 30mm buttons.

Mistake #1

I do not have big hands. 

Onward! Template downloaded, exacto knife to cut out all the holes, taped to the box and cut out the cardboard. A couple holes in the back spine of the box for start and selec- sorry, the SHARE button, and we're in business. 
{{< figure src="/fightstick/fs2.jpg" caption="*View of my workstation after cutting and fitting buttons*" >}}

Once that was complete, it was time to start wiring up the buttons and connecting them to the RP2040 on a breadboard. I took my time on the wire harness' for each button as it was so cramped inside the box, every little bit of space used was important.
{{< figure src="/fightstick/fs3.jpg" caption="*Button harnesses in place, breadboard glued to bottom of box*" >}}
{{< figure src="/fightstick/fs4.jpg" caption="*All wired up!*" >}}
{{< figure src="/fightstick/fs5.jpg" caption="*View from the outside. Center hole is the microUSB port of the Pi Pico*" >}}

I really like how this little box turned out, it was sturdier than expected, a little small on the lap, but not so light it moved around a ton. 
So I hopped onto Street Fighter 6, plugged in my controller, and heard the most glorious noise. The Windows device connect sound. 

Other than a small wiring error that swapped light punch and light kick (jab and short for you ST nerds), it worked perfectly! Now it was the hard part.

## Learning

Over the next few days I practiced with the controller and got more comfortable with it. I was still **much** worse than with a stick, but things started to pick up. But I ran into an issue. When doing half-circle motions, it was very hard for me to be consistant with half circle back inputs. I can "piano" my fingers from ring->middle->index just fine, but index->middle->ring ? Not a chance. If only I could engineer my way out of this effort...

And then it hit me... I could! I had an idea, and now, another project. 
{{< figure src="/fightstick/doubleleverlesstemplate.png" caption="**TWO ROWS OF BUTTONS**" >}}

Link to second blog post here.

Heres some art my girlfriend did on the cardboard controller as a treat. 
{{< figure src="/fightstick/fsArt.jpg" >}}

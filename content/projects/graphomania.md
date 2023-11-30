+++
title = 'Graphomania'
date = 2023-11-29T14:13:08-08:00
draft = false
author = "Jeremy Locatelli"
+++

Like most of my ideas, this one stuck me while staying up far to late on the computer, bouncing from one page to the next. 

I stumbled onto the artist page for Rob Matthews, specifically his series entitled [Entopic Graphomania](https://www.matthewstheyounger.com/entopic-graphomania) and I was captivated. I've always been a sucker for geometric patterns, and these pages were beautiful to me. Now, I consider myself an artist, and I always view art not as an end goal, but as a journey to the finished piece. But I am also an engineer with an active mind at 1 A.M, so when an idea worms itself into my brain, its hard to shake free.

In college I worked with OpenCV and other computer vision software libraries to do various tasks, facial recognition, cat recognition for an automated cat door, you know, normal things. But here I wanted to try using it to imitate the art from Entopic Graphomania. Not to create art, but to explore my own journey of idea to finished project. 

The main outline is this, use OCR to read the page and get information about every letter on the page and its position into some data structure.
Then we select some letter, lets say every instance of the letter "u" on the page and connect them together. Simple but it wont be pretty, and for more common letters its going to be a mess on screen, but its a starting point. 

{{< figure src="/graph/BoxedU.png" caption="*All the U's mostly selected*" >}}

{{< figure src="/graph/UsConnected.png" caption="*Every point connected to every other point*" >}}

This was great so far, but its not exactly what I wanted. So thinking back to my AI days theres a simple concept that I could use here. A heuristic function to determine if a line should be drawn between two points rather than just connect everything. 

So I started with some simple tests, and this is where all the fun began. White board out and mind racing, there were so many different rules I could make up to determine this. What about pixel distance and only connecting points if they fall below some threshold distance? 

{{< figure src="/graph/E_75Threshold.png" caption="*E's connected with threshold of 75*" >}}

Now were getting somewhere, these are little "islands" of connections and look quite nice. From here I got quite distracted generating different graphs with different pages, different letters and playing with different heuristic functions. Other ideas I played with were not connecting points if they were too close to each other in the X or Y axis (to prevent short lines cluttering connections in the same sentence or paragraph).
Connecting all the outer points together in a ring, then connecting a certain number of "inner" points to this outer ring to form the graph (this one hurt my head a bit, still working on getting it perfect)

This project was a good way to spend a day messing with python and applying an idea I had late at night to become something physical. I have a million ideas much like this, but its often hard for me to simply start, open the IDE and start outlining. Even though every time I start something, I enjoy the process of building and refining. This was a nice reminder of that.

All pages are from Vincent Persichetti - Twentieth Century Harmony, a music reference book that I have fallen back on many times when creating music. 
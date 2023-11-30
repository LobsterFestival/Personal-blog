+++
title = 'Building This Blog'
date = 2023-11-30T13:05:35-08:00
draft = false
author = "Jeremy Locatelli"
+++

I'm prefacing this with a huge disclaimer. I am Not A Webbed Developer. I went into embedded engineering for a reason, and thats to stay the hell off the internet. In that same vein I also think IoT is super neat and capable. Lets move on.

In the year 2023 I finally decided I should have a web presence outside of social media. But as always I had to build it and manage it myself. I knew already I wanted a static site, something lightweight, easy to update and write content for. Hugo was a natural pick for me. The ability to write all my sites content in plain text Markdown is appealing, and the blazing fast render times make me happy :)

Now onto hosting, what should I use! There are so many cool options out there, Vercel is sleek and does a million cool things, but I just need to run a barebones web file server for static content, a little overkill. Heroku is, uh also there I guess, no thanks. But [Fly.io](https://fly.io) is what I've used in the past for a small CSV converter website I wrote in Python and Flask a year or so ago, so lets update my tooling and use that. 

Luckily theres a ton of tools for building Hugo and serving them with file server in a docker container, so it was only a matter of choosing our server. Nginx is usually a goto for simple tasks like this, but I read about Caddy, and it seemed to fit my need just fine. A couple of lines in a Dockerfile and some basic config files for Caddy and Fly.io and I had my first deployment ready to go.

Now I'll always be honest with you dear reader, sometimes when building systems, stuff flat doesn't work, but everything around the system is saying "yeah no problems here, Boss!". Yet there you are, with a webserver that refuses connections, and a log full of messages that say "Everything nominal sir! (smile)". I'm here to tell you, get up, go get some water, go for a walk, pet a dog. But please, stop editing dockerfiles, or caddyfiles, or hugo.toml or whatever. Step away. Like now.

Thanks, isn't that better, hour and a half later you sit back down and notice a huge empty space under "Allocated IP Addresses". Oh, well that uh...
Yeah lets allocate them, I thought it did that automatically? It did for my first site I built on Fly.io (HINT). Anyway its $2 a month now, and as soon as I allocated one, my site sprang to life!

Next was to ~~complicate~~ make things easier for development. I've never used GitHub actions before, but they seemed fairly straight forward, make some secret keys to tap into the Fly.io API and call their build function, and my site will update just as if I called it from my local command line. Plus a few lines to make sure my git submodule hugo theme comes along for the ride too. As someone who hasn't done web development since college where I was using SpringBoot and Zuul and all these different 2017 era development tools, this was pretty awesome. Of course I understand CI/CD, Jenkins and I go wayyyy back, but having my own little pipeline, nothing like it.  



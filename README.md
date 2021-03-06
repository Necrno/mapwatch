# [Mapwatch](https://mapwatch.github.io)

[![Build Status](https://travis-ci.org/mapwatch/mapwatch.svg?branch=master)](https://travis-ci.org/mapwatch/mapwatch)

Give me your [Path of Exile](https://www.pathofexile.com) `Client.txt` log file, and I'll give you some statistics about your recent mapping activity.

Then, [if you're using Google Chrome](https://chrome.google.com), leave me open while you play - I'll keep watching, no need to upload again.

[Run an example now!](https://mapwatch.github.io?tickStart=1526941861000&example=stripped-client.txt#/)

Or, screenshots (slightly outdated):

[![Screenshot 1](https://i.imgur.com/PPRbLlZ.png)](https://imgur.com/a/VhFtZbU)

[![Screenshot 2](https://i.imgur.com/DrMCKZD.png)](https://imgur.com/a/VhFtZbU)

### Is this legal?

[Yes, says GGG.](https://imgur.com/44uuaiz)

### Is this safe?

Yes. There's no executable to download and run - it's just a web page, far less virus potential.

### Is this private?

Mostly yes. Nothing in your `client.txt` ever leaves your computer. Once Mapwatch has loaded, it'll even work offline.

Mapwatch tells Google Analytics how long you've spend on the page and when you finish a map. The developer's goal here is to see averages of all Mapwatch users, and to gather debugging information - nothing evil.

If Google Analytics tracking bothers you, [feel free to turn it off.](https://tools.google.com/dlpage/gaoptout)

### Why?

Seeing how much time I spend in each map, and how much time I waste screwing around in town, helps me play more efficiently. Maybe it'll help you too. Also, numbers are fun.

### How do Zana missions work?

They're treated as "side areas", like abyssal depths or trials, not a separate map run. A map with a Zana mission adds 1, not 2, to your maps-completed-today count.

Exception: Zana's dailies are a side area of the "Crumbled Laboratory" map. Yes, that's not actually a map, kind of awkward. I'd like to improve this soon.

### Any similar tools?

* [Path of Maps](http://pathofmaps.com/) allows you to track loot from each map. It's less automatic, it takes some extra interaction/time during each map, but it can track things that Mapwatch doesn't.
* [Livesplit](https://github.com/brandondong/POE-LiveSplit-Component) times acts 1-10 and the Labyrinth with no extra interaction, much like Mapwatch. I don't think Livesplit times your maps.
* Any others out there I'm not aware of?

### Does this track the labyrinth or acts 1-10?

No. [Livesplit](https://github.com/brandondong/POE-LiveSplit-Component)'s already good at those.

### It's not updating while I play - I have to re-upload client.txt to see changes.

The live-updating part only works in Chrome. Firefox/IE/others have no way to do this, as far as I know.

I could create a downloadable version where this feature would be more reliable, if there's enough interest (or if Chrome ever breaks this). I'd rather not have to.

### The map I just finished isn't included in today's statistics yet.

Mapwatch probably doesn't know you're done with the map yet. Mapwatch thinks a map is done when you:

* Leave town. Either enter a new map, or enter a non-map zone like the Aspirants' Plaza.
* Or, wait 30 minutes. When you don't enter any new zones for a while, Mapwatch will assume you're done playing.

Returning to town does not end a run - maybe you died or you're dropping off loot, but you aren't done with the map yet.

Restarting the game does not end a run - maybe it crashed, but you're restarting and aren't done with the map yet.

The idea is that your map runs will (eventually) be counted properly by just playing normally.

### I ran two Vault maps (for example) in a row, but Mapwatch thinks I only ran one map.

Unfortunately, I can't fix this. PoE's log file sometimes doesn't have enough information to tell two maps apart. Sorry.

**Why?** The log file tells us the *zone name* and the *server address* (ex. "Vault@127.0.0.1:6112"). The server is assigned randomly, and there's lots of them, so usually we can tell the difference between two map-instances with the same name. Not always, though - if two map-instances in a row are on the same server, they might look the same to us.

This should be pretty uncommon - I've never actually seen it happen, but it's possible. It could be more or less common depending on your location. If it bothers you enough, the workaround is to avoid running the same kind of map twice in a row. Maps with different names will never be confused.

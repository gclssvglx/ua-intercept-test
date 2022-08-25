# Google Analytics UA Intercept Test

A silly little [Sinatra](https://sinatrarb.com/) app - one of my favourite tools - that tests intercepting UA 'events' as they are fired by the `analytics.js` script.

Please don't expect too much - it just does `pageviews` but it does show how you might grab the UA data and send it to your own site, REST API, (REST) database and so on.

With GA4 this is much easier as you can just grab the events straight out of the `dataLayer`.

The important bit is this [javascript function](https://github.com/gclssvglx/ua-intercept-test/blob/ac7cc01807f0a93193dd1e1d1a012db8f9848798/views/index.erb#L25) which I've shamlelessly nicked from the [docs](https://developers.google.com/analytics/devguides/collection/analyticsjs/tasks#adding_to_a_task) and tweaked a bit.

## Running the app

Usual Ruby/Sinatra stuff...

Make sure you have Ruby v3.1.2 installed, then

```bash
$ bundle install
$ ruby app.rb
```

Then navigate to [http://localhost:4567](http://localhost:4567) and **reload the page** - you should see some output similar to this...

<pre>
{"v":"1","_v":"j96","a":"1124791828","t":"pageview","_s":"1","dl":"http://localhost/","ul":"en-gb","de":"UTF-8","dt":"UA Intercept Test","sd":"30-bit","sr":"1792x1120","vp":"1792x495","je":"0","_u":"QCCAAEABAAAAAC~","jid":"21294551","gjid":"1020926205","cid":"1587402590.1643040314","tid":"UA-227422630-1","_gid":"1009364333.1661431271","_r":"1","_slc":"1","z":"1130296842"}
</pre>

Keep reloading and you'll keep getting `pageviews`.

Enjoy!

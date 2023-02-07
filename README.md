
# londonmapbot

[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![](https://img.shields.io/badge/@londonmapbot@botsin.space-white?style=flat&labelColor=purple&logo=Mastodon&logoColor=white)](https://botsin.space/@londonmapbot)
[![](https://img.shields.io/badge/@londonmapbot-white?style=flat&labelColor=blue&logo=Twitter&logoColor=white)](https://twitter.com/londonmapbot)
[![rostrum.blog post](https://img.shields.io/badge/rostrum.blog-posts-008900?style=flat&labelColor=black&logo=data:image/gif;base64,R0lGODlhEAAQAPEAAAAAABWCBAAAAAAAACH5BAlkAAIAIf8LTkVUU0NBUEUyLjADAQAAACwAAAAAEAAQAAAC55QkISIiEoQQQgghRBBCiCAIgiAIgiAIQiAIgSAIgiAIQiAIgRAEQiAQBAQCgUAQEAQEgYAgIAgIBAKBQBAQCAKBQEAgCAgEAoFAIAgEBAKBIBAQCAQCgUAgEAgCgUBAICAgICAgIBAgEBAgEBAgEBAgECAgICAgECAQIBAQIBAgECAgICAgICAgECAQECAQICAgICAgICAgEBAgEBAgEBAgICAgICAgECAQIBAQIBAgECAgICAgIBAgECAQECAQIBAgICAgIBAgIBAgEBAgECAgECAgICAgICAgECAgECAgQIAAAQIKAAAh+QQJZAACACwAAAAAEAAQAAAC55QkIiESIoQQQgghhAhCBCEIgiAIgiAIQiAIgSAIgiAIQiAIgRAEQiAQBAQCgUAQEAQEgYAgIAgIBAKBQBAQCAKBQEAgCAgEAoFAIAgEBAKBIBAQCAQCgUAgEAgCgUBAICAgICAgIBAgEBAgEBAgEBAgECAgICAgECAQIBAQIBAgECAgICAgICAgECAQECAQICAgICAgICAgEBAgEBAgEBAgICAgICAgECAQIBAQIBAgECAgICAgIBAgECAQECAQIBAgICAgIBAgIBAgEBAgECAgECAgICAgICAgECAgECAgQIAAAQIKAAA7)](https://www.rostrum.blog/tags/londonmapbot/)

## Purpose

Source for the Mastodon bot [@londonmapbot@botsin.space](https://www.twitter.com/londonmapbot) and Twitter bot [@londonmapbot](https://www.twitter.com/londonmapbot), built by [@mattdray](https://twitter.com/mattdray). They post satellite images of random coordinates in Greater London using [{rtoot}](https://schochastics.github.io/rtoot), [{rtweet}](https://docs.ropensci.org/rtweet/), [MapBox](https://www.mapbox.com/) and [GitHub Actions](https://docs.github.com/en/actions). 

## Process

This repo contains a [GitHub Action](https://github.com/features/actions) that runs on schedule (currently twice per day). It executes R code that queries [the Mapbox API](https://docs.mapbox.com/api/maps/#static-images) for a satellite image (copyright Mapbox/OpenStreetMap/Maxar) of random co-ordinates from a bounding box that covers Greater London. The image and a URL for that location on [OpenStreetMap](https://www.openstreetmap.org/) are posted to Mastodon using [{rtoot}](https://schochastics.github.io/rtoot) and to Twitter using [{rtweet}](https://docs.ropensci.org/rtweet/).

Note that the Twitter functionality of this bot is expected to fail from 2023-02-09, which is [when the API will no longer have a free-access tier](https://twitter.com/TwitterDev/status/1621026986784337922).

## How

See:

* my talk at LondonR in Feb 2022 (see the [blog](https://www.rostrum.blog/2022/02/12/mapbotr-londonr/), [slides](https://matt-dray.github.io/mapbot-londonr/#1), [video](https://player.vimeo.com/video/683004567)) 
* my [original blog post](https://www.rostrum.blog/2020/09/21/londonmapbot/) that introduces the bot
* [a Twitter List](https://twitter.com/i/lists/1492559073287581707) with >20 bots inspired by londonmapbot
  
You can make your own Twitter bot. See the links above for details, or [this excellent introduction by Oscar Baruffa](https://oscarbaruffa.com/twitterbot/), but in brief:

1. Create a Twitter account for your bot
1. Sign up for developer status with [Twitter](https://developer.twitter.com/en/apply-for-access) (including ['elevated access'](https://developer.twitter.com/en/docs/twitter-api/getting-started/about-twitter-api)) and [MapBox](https://www.mapbox.com/)
1. Fork this repo, or click the green '[use this template](https://github.com/matt-dray/londonmapbot/generate)' button
1. Get your API keys from MapBox and Twitter and add them as [GitHub secrets](https://docs.github.com/en/actions/reference/encrypted-secrets) to your repo
1. Edit the `lat` and `lon` variables in `londonmapbot-tweet.R` to change where coordinates are sampled from (see [the mapbotverse](https://twitter.com/i/lists/1492559073287581707) for other ways to sample from within geographic boundaries)
1. Adjust the `.github/workflows/londonmapbot.yml` file to adjust [the cron schedule](https://crontab.guru/#0,30_*_*_*_*) if you want
1. GitHub Actions will recognise the .yml file and execute the code on the schedule provided
1. Mark the account [as an automated account](https://help.twitter.com/en/using-twitter/automated-account-labels)

You can also adjust this workflow to post to Mastodon, which I will be posting about soon. See [Matt Kerlogue's blog post](https://lapsedgeographer.london/2022-11/mastodon-switch/) for more information and for an augmented implementation.

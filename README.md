# londonmapbot

[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![](https://img.shields.io/badge/@londonmapbot@botsin.space-white?style=flat&labelColor=purple&logo=Mastodon&logoColor=white)](https://botsin.space/@londonmapbot)
[![](https://img.shields.io/badge/@londonmapbot-white?style=flat&labelColor=blue&logo=Twitter&logoColor=white)](https://twitter.com/londonmapbot)
[![rostrum.blog post](https://img.shields.io/badge/rostrum.blog-posts-008900?style=flat&labelColor=black&logo=data:image/gif;base64,R0lGODlhEAAQAPEAAAAAABWCBAAAAAAAACH5BAlkAAIAIf8LTkVUU0NBUEUyLjADAQAAACwAAAAAEAAQAAAC55QkISIiEoQQQgghRBBCiCAIgiAIgiAIQiAIgSAIgiAIQiAIgRAEQiAQBAQCgUAQEAQEgYAgIAgIBAKBQBAQCAKBQEAgCAgEAoFAIAgEBAKBIBAQCAQCgUAgEAgCgUBAICAgICAgIBAgEBAgEBAgEBAgECAgICAgECAQIBAQIBAgECAgICAgICAgECAQECAQICAgICAgICAgEBAgEBAgEBAgICAgICAgECAQIBAQIBAgECAgICAgIBAgECAQECAQIBAgICAgIBAgIBAgEBAgECAgECAgICAgICAgECAgECAgQIAAAQIKAAAh+QQJZAACACwAAAAAEAAQAAAC55QkIiESIoQQQgghhAhCBCEIgiAIgiAIQiAIgSAIgiAIQiAIgRAEQiAQBAQCgUAQEAQEgYAgIAgIBAKBQBAQCAKBQEAgCAgEAoFAIAgEBAKBIBAQCAQCgUAgEAgCgUBAICAgICAgIBAgEBAgEBAgEBAgECAgICAgECAQIBAQIBAgECAgICAgICAgECAQECAQICAgICAgICAgEBAgEBAgEBAgICAgICAgECAQIBAQIBAgECAgICAgIBAgECAQECAQIBAgICAgIBAgIBAgEBAgECAgECAgICAgICAgECAgECAgQIAAAQIKAAA7)](https://www.rostrum.blog/tags/londonmapbot/)

## What

Source for the Mastodon bot [@londonmapbot@botsin.space](https://botsin.space/@londonmapbot) built by [Matt Dray](https://www.matt-dray.com). The repo contains a [GitHub Action](https://github.com/features/actions) that executes R code on schedule to:

1. Choose a random spot in a bounding box that encloses Greater London.
2. Query [the Mapbox API](https://docs.mapbox.com/api/maps/#static-images) for a satellite image of that location.
3. Generate an [OpenStreetMap](https://www.openstreetmap.org/) URL for that location.
4. Post the image and URL to Mastodon using [{rtoot}](https://schochastics.github.io/rtoot).

The bot was built originally for Twitter as [@londonmapbot](https://www.twitter.com/londonmapbot) using the [{rtweet}](https://docs.ropensci.org/rtweet/) package. Posts to Twitter have stopped as of May 2023 due to changes in the Twitter API terms of service.

## How

For detail on the original Twitter bot see:

* my talk at LondonR in Feb 2022 (see the [blog](https://www.rostrum.blog/2022/02/12/mapbotr-londonr/), [slides](https://matt-dray.github.io/mapbot-londonr/#1), [video](https://player.vimeo.com/video/683004567)) 
* my [original blog post](https://www.rostrum.blog/2020/09/21/londonmapbot/) that introduces the bot
* my [blog post](https://www.rostrum.blog/2023/02/09/londonmapbotstodon/) about updating the bot for {rtweet} version 1.0
* [a Twitter List](https://twitter.com/i/lists/1492559073287581707) with >20 bots inspired by londonmapbot

You can also read [my blog post](https://www.rostrum.blog/2023/02/09/londonmapbotstodon/) about how I set up the bot for Mastodon, following [Matt Kerlogue's advice](https://lapsedgeographer.london/2022-11/mastodon-switch/).

# londonmapbot

[![Project Status: Inactive – The project has reached a stable, usable state but is no longer being actively developed; support/maintenance will be provided as time allows.](https://www.repostatus.org/badges/latest/inactive.svg)](https://www.repostatus.org/#inactive)
[![](https://img.shields.io/badge/@londonmapbot@botsin.space-white?style=flat&labelColor=purple&logo=Mastodon&logoColor=white)](https://botsin.space/@londonmapbot)
[![](https://img.shields.io/badge/@londonmapbot-white?style=flat&labelColor=blue&logo=Twitter&logoColor=white)](https://twitter.com/londonmapbot)
[![rostrum.blog post](https://img.shields.io/badge/rostrum.blog-posts-008900?style=flat&labelColor=black&logo=data:image/gif;base64,R0lGODlhEAAQAPEAAAAAABWCBAAAAAAAACH5BAlkAAIAIf8LTkVUU0NBUEUyLjADAQAAACwAAAAAEAAQAAAC55QkISIiEoQQQgghRBBCiCAIgiAIgiAIQiAIgSAIgiAIQiAIgRAEQiAQBAQCgUAQEAQEgYAgIAgIBAKBQBAQCAKBQEAgCAgEAoFAIAgEBAKBIBAQCAQCgUAgEAgCgUBAICAgICAgIBAgEBAgEBAgEBAgECAgICAgECAQIBAQIBAgECAgICAgICAgECAQECAQICAgICAgICAgEBAgEBAgEBAgICAgICAgECAQIBAQIBAgECAgICAgIBAgECAQECAQIBAgICAgIBAgIBAgEBAgECAgECAgICAgICAgECAgECAgQIAAAQIKAAAh+QQJZAACACwAAAAAEAAQAAAC55QkIiESIoQQQgghhAhCBCEIgiAIgiAIQiAIgSAIgiAIQiAIgRAEQiAQBAQCgUAQEAQEgYAgIAgIBAKBQBAQCAKBQEAgCAgEAoFAIAgEBAKBIBAQCAQCgUAgEAgCgUBAICAgICAgIBAgEBAgEBAgEBAgECAgICAgECAQIBAQIBAgECAgICAgICAgECAQECAQICAgICAgICAgEBAgEBAgEBAgICAgICAgECAQIBAQIBAgECAgICAgIBAgECAQECAQIBAgICAgIBAgIBAgEBAgECAgECAgICAgICAgECAgECAgQIAAAQIKAAA7)]([https://www.rostrum.blog/tags/londonmapbot/](https://www.rostrum.blog/index.html#category=londonmapbot))

## What

Source for the Mastodon bot [@londonmapbot@botsin.space](https://botsin.space/@londonmapbot) built by [Matt Dray](https://www.matt-dray.com). The repo contains a [GitHub Action](https://github.com/features/actions) that executes R code on schedule to:

1. Choose a random spot in a bounding box that encloses Greater London.
2. Query [the Mapbox API](https://docs.mapbox.com/api/maps/#static-images) for a satellite image of that location.
3. Generate an [OpenStreetMap](https://www.openstreetmap.org/) URL for that location.
4. Post the image and URL to Mastodon using [{rtoot}](https://schochastics.github.io/rtoot).

The bot was built originally for Twitter as [@londonmapbot](https://www.twitter.com/londonmapbot) using the [{rtweet}](https://docs.ropensci.org/rtweet/) package. Posts to Twitter stopped in May 2023 due to changes in the API terms of service. You can [see an older version of the repo](https://github.com/matt-dray/londonmapbot/tree/65aa64722c475fc9bda274c49674cd66ff695b4b) from before the Twitter-related code was removed.

## How

For detail on the original Twitter bot see:

* my talk at LondonR in Feb 2022 (see the [blog](https://www.rostrum.blog/posts/2022-02-12-mapbot-londonr/), [slides](https://matt-dray.github.io/mapbot-londonr/#1), [video](https://player.vimeo.com/video/683004567)) 
* my [original blog post](https://www.rostrum.blog/2020/09/21/londonmapbot/) that introduces the bot
* my [blog post](https://www.rostrum.blog/posts/2023-02-09-londmapbotstodon/) about porting the bot to Mastodon, following [Matt Kerlogue's advice](https://lapsedgeographer.london/2022-11/mastodon-switch/)

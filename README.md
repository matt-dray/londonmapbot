# londonmapbot

[![Project Status: Inactive – The project has reached a stable, usable state but is no longer being actively developed; support/maintenance will be provided as time allows.](https://www.repostatus.org/badges/latest/inactive.svg)](https://www.repostatus.org/#inactive)
[![](https://img.shields.io/badge/@londonmapbot@botsin.space-white?style=flat&labelColor=purple&logo=Mastodon&logoColor=white)](https://botsin.space/@londonmapbot)
[![](https://img.shields.io/badge/@londonmapbot-white?style=flat&labelColor=blue&logo=X&logoColor=white)](https://twitter.com/londonmapbot)
[![rostrum.blog posts](https://img.shields.io/badge/rostrum.blog-posts-008900?style=flat&labelColor=black&logo=data:image/gif;base64,R0lGODlhEAAQAPEAAAAAABWCBAAAAAAAACH5BAlkAAIAIf8LTkVUU0NBUEUyLjADAQAAACwAAAAAEAAQAAAC55QkISIiEoQQQgghRBBCiCAIgiAIgiAIQiAIgSAIgiAIQiAIgRAEQiAQBAQCgUAQEAQEgYAgIAgIBAKBQBAQCAKBQEAgCAgEAoFAIAgEBAKBIBAQCAQCgUAgEAgCgUBAICAgICAgIBAgEBAgEBAgEBAgECAgICAgECAQIBAQIBAgECAgICAgICAgECAQECAQICAgICAgICAgEBAgEBAgEBAgICAgICAgECAQIBAQIBAgECAgICAgIBAgECAQECAQIBAgICAgIBAgIBAgEBAgECAgECAgICAgICAgECAgECAgQIAAAQIKAAAh+QQJZAACACwAAAAAEAAQAAAC55QkIiESIoQQQgghhAhCBCEIgiAIgiAIQiAIgSAIgiAIQiAIgRAEQiAQBAQCgUAQEAQEgYAgIAgIBAKBQBAQCAKBQEAgCAgEAoFAIAgEBAKBIBAQCAQCgUAgEAgCgUBAICAgICAgIBAgEBAgEBAgEBAgECAgICAgECAQIBAQIBAgECAgICAgICAgECAQECAQICAgICAgICAgEBAgEBAgEBAgICAgICAgECAQIBAQIBAgECAgICAgIBAgECAQECAQIBAgICAgIBAgIBAgEBAgECAgECAgICAgICAgECAgECAgQIAAAQIKAAA7)]([https://www.rostrum.blog/tags/londonmapbot/](https://www.rostrum.blog/index.html#category=londonmapbot))

## What

Source for the former Mastodon bot [@londonmapbot@botsin.space](https://botsin.space/@londonmapbot)—and former Twitter bot [@londonmapbot](https://twitter.com/londonmapbot)—for posting random satellite images of London. Built by [Matt Dray](https://www.matt-dray.com). 

The repo contains a [GitHub Action](https://github.com/features/actions) that executes R code on schedule to:

1. Choose a random spot in a bounding box that encloses Greater London.
2. Query [the Mapbox API](https://docs.mapbox.com/api/maps/#static-images) for a satellite image of that location.
3. Generate an [OpenStreetMap](https://www.openstreetmap.org/) URL for that location.
4. Post the image and URL to Mastodon using [{rtoot}](https://gesistsa.github.io/rtoot).

Thank you to MapBox; OpenStreetMap contributors; and David and Chung-hong.

## When

The bot was built originally for Twitter as [@londonmapbot](https://www.twitter.com/londonmapbot) using the [{rtweet}](https://docs.ropensci.org/rtweet/) package. Thank you Michael, Lluís and Hadley. Posts to Twitter stopped in May 2023 due to changes in the API terms of service. You can [see an older version of the repo](https://github.com/matt-dray/londonmapbot/tree/65aa64722c475fc9bda274c49674cd66ff695b4b) from before the Twitter-related code was removed.

The bot was ported to [the botsin.space instance of Mastodon](https://botsin.space/about) thereafter, but was stopped from updating in December 2024 after [the announcement that the instance would be shutting down](https://muffinlabs.com/posts/2024/10/29/10-29-rip-botsin-space/). Thank you Colin. 

## How

To run this code locally, you'll first need to create and complete a `.Renviron` file in the project root using the `.Renviron.example` file as a template. If you enable the GitHub Action to run the R script, you'll need to add these environmental variables to the GitHub Secrets of your repo.

For more information about the bot's development, see:

* my talk at LondonR in Feb 2022 (see the [blog](https://www.rostrum.blog/posts/2022-02-12-mapbot-londonr/), [slides](https://matt-dray.github.io/mapbot-londonr/#1), [video](https://player.vimeo.com/video/683004567)) 
* my [original introductory blog post](https://www.rostrum.blog/2020/09/21/londonmapbot/)
* my [blog post](https://www.rostrum.blog/posts/2023-02-09-londmapbotstodon/) about porting the bot to Mastodon, following [Matt Kerlogue's advice](https://lapsedgeographer.london/2022-11/mastodon-switch/)

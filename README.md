
# londonmapbot

[![Project Status: Concept – Minimal or no implementation has been done
yet, or the repository is only intended to be a limited example, demo,
or
proof-of-concept.](https://www.repostatus.org/badges/latest/concept.svg)](https://www.repostatus.org/#concept)
[![rostrum.blog post](https://img.shields.io/badge/rostrum.blog-post-008900?style=flat&labelColor=black&logo=data:image/gif;base64,R0lGODlhEAAQAPEAAAAAABWCBAAAAAAAACH5BAlkAAIAIf8LTkVUU0NBUEUyLjADAQAAACwAAAAAEAAQAAAC55QkISIiEoQQQgghRBBCiCAIgiAIgiAIQiAIgSAIgiAIQiAIgRAEQiAQBAQCgUAQEAQEgYAgIAgIBAKBQBAQCAKBQEAgCAgEAoFAIAgEBAKBIBAQCAQCgUAgEAgCgUBAICAgICAgIBAgEBAgEBAgEBAgECAgICAgECAQIBAQIBAgECAgICAgICAgECAQECAQICAgICAgICAgEBAgEBAgEBAgICAgICAgECAQIBAQIBAgECAgICAgIBAgECAQECAQIBAgICAgIBAgIBAgEBAgECAgECAgICAgICAgECAgECAgQIAAAQIKAAAh+QQJZAACACwAAAAAEAAQAAAC55QkIiESIoQQQgghhAhCBCEIgiAIgiAIQiAIgSAIgiAIQiAIgRAEQiAQBAQCgUAQEAQEgYAgIAgIBAKBQBAQCAKBQEAgCAgEAoFAIAgEBAKBIBAQCAQCgUAgEAgCgUBAICAgICAgIBAgEBAgEBAgEBAgECAgICAgECAQIBAQIBAgECAgICAgICAgECAQECAQICAgICAgICAgEBAgEBAgEBAgICAgICAgECAQIBAQIBAgECAgICAgIBAgECAQECAQIBAgICAgIBAgIBAgEBAgECAgECAgICAgICAgECAgECAgQIAAAQIKAAA7)](https://www.rostrum.blog/2020/09/21/londonmapbot/)

Repo for the Twitter bot [@londonmapbot](https://www.twitter.com/londonmapbot). It posts satellite images of random coordinates in Greater London using [{rtweet}](https://docs.ropensci.org/rtweet/), [MapBox](https://www.mapbox.com/) and [GitHub Actions](https://docs.github.com/en/actions). Built by [@mattdray](https://twitter.com/mattdray).

# What

This repo contains a [GitHub Action](https://github.com/features/actions) that runs on schedule (:00 and :30 past each hour). It contains R code that queries [the Mapbox API](https://docs.mapbox.com/api/maps/#static-images) for a satellite image of random co-ordinates in a bounding box around Greater London. It then posts the image to [@londonmapbot](https://www.twitter.com/londonmapbot) on Twitter using [{rtweet}](https://docs.ropensci.org/rtweet/), along with a URL to that location on [OpenStreetMap](https://www.openstreetmap.org/).

See [the blog post](https://www.rostrum.blog/2020/09/21/londonmapbot/) and [the rOpenSci {rtweet} use-case page](https://discuss.ropensci.org/c/usecases/10).

# The mapbotverse

## Others

* [@canberramapbot](https://twitter.com/canberramapbot) by [@rexarski](https://twitter.com/rexarski)

## How to

See [the accompanying blog post](https://www.rostrum.blog/2020/09/21/londonmapbot/) for details, but in short:

1. Create a Twitter account with the handle in the form 'locationmapbot'
1. Sign up for developer status with [Twitter](https://developer.twitter.com/en/apply-for-access) and [MapBox](https://www.mapbox.com/)
1. Fork this repo (or just copy the code into a new repo)
1. Get your API keys from MapBox and Twitter and add them as secrets to your GitHub repo
1. Edit the `lat` and `lon` variables in the `londonmapbot-tweet.R` file to provide a bounding box around your location to sample coordinates from
1. Adjust the `.github/workflows/londonmapbot.yml` file to adjust [the cron schedule](https://crontab.guru/#0,30_*_*_*_*) if you want
1. GitHub Actions will recognise the .yml file and post to Twitter on the defined schedule

# Credits

Posted images are copyright of Mapbox/OpenStreetMap/Maxar. This information is embedded in every image.

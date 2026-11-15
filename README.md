# londonmapbot

[![Project Status: Inactive – The project has reached a stable, usable state but is no longer being actively developed; support/maintenance will be provided as time allows.](https://www.repostatus.org/badges/latest/inactive.svg)](https://www.repostatus.org/#inactive)
[![](https://img.shields.io/badge/@londonmapbot@botsin.space-white?style=flat&labelColor=purple&logo=Mastodon&logoColor=white)](https://botsin.space/@londonmapbot)
[![](https://img.shields.io/badge/@londonmapbot-white?style=flat&labelColor=blue&logo=X&logoColor=white)](https://twitter.com/londonmapbot)
[![Blog
posts](https://img.shields.io/badge/rostrum.blog-black?style=flat&labelColor=00ff00&logo=data%3Aimage%2Fgif%3Bbase64%2CR0lGODdhoACgAJEAAAAAAP%2F%2F%2FwAAAAAAACH5BAlkAAIALAAAAACgAKAAAAL%2FlI%2BpywgPY5u02hQzuLz7r0nfSBohVKbqdT7rS7UbTMNyjR93zoNtX9sBh7EfcSU8Kh3GJSnpVEKjnCkVaL0WT1pps2vJgr1cp3gMPufU6Cs7%2BG233zS6nByK2u%2FEPTLO1%2BWnMhi4BjhUaAhXtqS4aIOIJQmJpvhYqXVJmbm42dgZ%2BpkXWjqqUWrKOYGZioc60urat9ogOzsJ2nGLy3Oa0VtVy3AmUzy8wMuCrHBsTErMjCH9pytszfQMG40dRk34bcKpDZ0cLqDs3V3hTI5ie57OHj%2FuLsJdvnv%2BRL%2BObv8O3zYP8rbku3YwG0BW%2FRLmcjjPH8CA5vwxtIjj172K%2FwvhYRQITE67gc0mzgC5seRHS%2FUkmrwI8d%2FKMSNDotQGk%2BS0mWlaxjR5kqNOhUMN1Uy5s%2BNNFx5j3jlKUaVSoTapIvXks6i4iTmrStXKByrTpca6XtWxz0xWr0ntmY3ali1Wl3SnfpWLlqeghkDdxkrriG9fcvz0ahI8%2BFlhpyIRJ9YIdy5jso%2FBvh2bCXLlyVYjG3W82XJT0XNAhz4bkTNN06cx6zPshnXrxaQzv1TLNZg6u7Ry6zboN7Dv36Pd6blNvDhh3LyTEzXOPLjzu8uFN58u83oPoNg7K44Ovfvz6q%2FCi0%2FRuuz5w%2Blhr6%2FWvvZ7RvHxzn9Y3%2FP97fnt7%2F8%2F1J9%2B%2F2UUoIAD1lGgawf6kmBQ54mlHmVrkUedgQTWJV2F30mIoX8A%2FoScdxGKCOFxHVIYF4rj4aSchfSBxV2LG5I4oYsInsgihyAOp6GDve2oXXYZppijiCYCOeSKM%2FZYInioCWkekzUuSaSCiUw5opQ4Uqmkj3tt6WVeQTbZCZk0gnlZmIGYqSWS%2FhX0IYxYslmlmmFhmSadXaqCpoxZ1pkmn24%2BGSNZgYqCp596iilfT33qKOejtknaZqSD2hgMhIsuaKSiiXKamqVJMuohqFtdyiWpT5p6qqhRAsrqoZC%2BCdh6mn4aa6ezElrrg3PimiusuwoIJ6I81nmre4L%2Fjtrqq10WW9qxz%2F6qrLFjhlhpqb8Veiaqf3bHbba8SotduMhSq1ov5k4LJrQskdusiqoW6Su8UMobL73qAnsupcJO6m2e%2FO5pravjXuuvZAYTi%2B2%2FPS5La7sDz2vlZwlT%2FC3GsgK8cMX5pvqxne5GcnHIm96LqaMBe1oyyh7f2fK6GvsJ8cEdZxzyxpWcLHPONBccsbc89%2FrjzQLHTPSVSNt78lMTm%2Fy0y3Y6vTTCK5cZdc9S6wzJ0ExHTfXV3Rr9c7TpEjzsy5pNfeHZM6ctsmlHNor22EHT%2FXZ5q5Ztt83a6qp3ynWLy7B7IzuM0M1N833E2keL%2FZrb6MnNMuSJPv9NsuRbV062D9V6rnmyli%2FzOceYIx7s5IYnnbrjqWeOt8%2Bvwxf75rODs3rpt7t%2Bu%2Bqhsx4s773TdvrgkBQAADs%3D)](https://www.rostrum.blog/index.html#category=londonmapbot)

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

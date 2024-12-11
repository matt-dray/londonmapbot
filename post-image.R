# Generate an image via MapBox API, post it via the Mastodon API
# Matt Dray, updated May 2023 (converted from Twitter to Mastodon)

# To run locally, ensure you add a .Renviron file with your RTOOT_DEFAULT_TOKEN
# and MAPBOX_PUBLIC_ACCESS_TOKEN. Add these as GitHub Secrets to your repo if
# you want to make use of the GitHub Action.

mastodon_token <- structure(
  list(
    bearer = Sys.getenv("RTOOT_DEFAULT_TOKEN"),
    type = "user",
    instance = "botsin.space"
  ),
  class = "rtoot_bearer"
)

mapbox_token <- Sys.getenv("MAPBOX_PUBLIC_ACCESS_TOKEN")

# Generate random coordinates within bounding box of Greater London
lon <- format(round(runif(1, -0.489, 0.236), 4), scientific = FALSE)
lat <- round(runif(1, 51.28, 51.686), 4)

# Build URL and fetch image from Mapbox API
img_url <- paste0(
  "https://api.mapbox.com/styles/v1/mapbox/satellite-v9/static/",
  paste0(lon, ",", lat), ",15,0/600x400@2x?access_token=", mapbox_token
)

# Download the image to a temporary location
temp_file <- tempfile(fileext = ".jpeg")
download.file(img_url, temp_file)

# Build the status message (text and URL)
latlon_details <- paste0(
  lat, ", ", lon, "\n",
  "https://www.openstreetmap.org/#map=17/", lat, "/", lon, "/"
)

# Provide alt-text description
alt_text <- paste(
  "A satellite image of a random location in Greater London,",
  "provided by MapBox. Typically contains a residential or",
  "industrial area, some fields or a golf course."
)

# Post to Mastodon

possibly_post_tweet <- purrr::possibly(rtoot::post_toot)  # will fail silently

rtoot::post_toot(
  status   = latlon_details,
  media    = temp_file,
  alt_text = alt_text,
  token    = mastodon_token
)

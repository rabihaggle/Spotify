resource "local_file" "config_file" {
  #Este archivo es el que tenemos que pasar a docker-compose
  filename = "${path.module}/Env/spotify.env"
  content = templatefile("${path.module}/Env/env_spotify.tpl",
    {
      SPOTIFY_CLIENT_ID     = var.SPOTIFY_CLIENT_ID,
      SPOTIFY_CLIENT_SECRET = var.SPOTIFY_CLIENT_SECRET
    }
  )
}

resource "local_file" "config_file" {
  #Este archivo es el que tenemos que pasar a docker-compose
  filename = "${path.module}/Env/spotify.env"
  content = templatefile("${path.module}/Env/env_spotify.tpl",
    {
      SPOTIFY_CLIENT_ID     = "Tu id generado en developer.spotify",
      SPOTIFY_CLIENT_SECRET = "Tu secreto generado en developer.spotify"
    }
  )
}


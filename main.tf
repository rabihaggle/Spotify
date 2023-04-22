#Buscamos los album que contengan Dramland y establecemos el limit 30
data "spotify_search_track" "search_album" {
  album = "rock argentino 00"
  limit = 10
}

data "spotify_search_track" "search_album_arg" {
  album = "rock argentino 90"
  limit = 40
}
data "spotify_search_track" "search_album_arg_rock" {
  album = "rock argentino"
  limit = 40
}
#Buscamos la discografia del artista
data "spotify_search_track" "BEP" {
  artist = "era"
  limit  = 10
}

#Buscamos la discografia del artista
data "spotify_search_track" "RH" {
  artist = "Red Hot Chili Peppers"
  limit  = 10
}
#Miremos lo que hay adentro!
output "Red_Hot" {
  value = data.spotify_search_track.BEP.limit
}

#Buscamos un artista pero con un limite tracks
data "spotify_search_track" "NTVG" {
  artist = "No Te Va Gustar"
  limit  = 15
}


##Como buscar un artista y un album
data "spotify_search_track" "Morat" {
  artist = "Morat"
  album  = "Sobre el amor y sus efectos secundarios"
}



resource "random_shuffle" "tracks_shuffle" {
  # flatten takes a list and replaces any elements that are lists with a flattened sequence of the list contents.
  # Por ejemplo flatten([["a", "b"], [], ["c"]]) --> ["a", "b", "c"]
  input = flatten([
    data.spotify_search_track.BEP.tracks[*].id,
    data.spotify_search_track.RH.tracks[*].id,
    data.spotify_search_track.Morat.tracks[*].id,
    data.spotify_search_track.NTVG.tracks[*].id,
    data.spotify_search_track.search_album.tracks[*].id,
    data.spotify_search_track.search_album_arg.tracks[*].id,
    data.spotify_search_track.search_album_arg_rock.tracks[*].id
  ])

}

resource "spotify_playlist" "playlist" {
  name        = "Playlist Terraform sin parar"
  description = "Code in -> https://github.com/rabihaggle/Spotify"
  public      = true

  tracks = resource.random_shuffle.tracks_shuffle.input

}
resource "spotify_playlist" "playlist_shuffle" {
  name        = "Playlist Terraform -> Shuffle"
  description = "Code in -> https://github.com/rabihaggle/Spotify"
  public      = true

  tracks = resource.random_shuffle.tracks_shuffle.result

}

#Link a nuestra playlist
output "playlist_url" {
  value = "https://open.spotify.com/playlist/${spotify_playlist.playlist.id}"
}

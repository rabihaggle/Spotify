#Buscamos la discografia del artista
data "spotify_search_track" "BEP" {
  artist = "Black Eyed Peas"
}

#Buscamos la discografia del artista
data "spotify_search_track" "RH" {
  artist = "Red Hot Chili Peppers"
}
#Miremos lo que hay adentro!
output "Red_Hot" {
  value = data.spotify_search_track.RH
}

#Buscamos un artista pero con un limite
data "spotify_search_track" "NTVG" {
  artist = "No Te Va Gustar"
  limit  = 10
}

#Los datos de NTV -> limit 10
output "NTV" {
  value = data.spotify_search_track.NTVG
}


##Como buscar un artista y un album
data "spotify_search_track" "Morat" {
  artist = "Morat"
  album  = "Sobre el amor y sus efectos secundarios"
}

#Mostramos todo el album del artista/grupo
output "morat" {
  value = data.spotify_search_track.Morat
}

resource "spotify_playlist" "playlist" {
  name        = "Playlist Terraform sin parar"
  description = "Creacion de playlist usando el provider de Terraform"
  public      = true

  # flatten takes a list and replaces any elements that are lists with a flattened sequence of the list contents.
  # Por ejemplo flatten([["a", "b"], [], ["c"]]) --> ["a", "b", "c"]
  tracks = flatten([
    data.spotify_search_track.BEP.tracks[4].id,
    data.spotify_search_track.BEP.tracks[7].id,
    data.spotify_search_track.BEP.tracks[2].id,
    data.spotify_search_track.BEP.tracks[5].id,
    data.spotify_search_track.RH.tracks[1].id,
    data.spotify_search_track.RH.tracks[2].id,
    data.spotify_search_track.RH.tracks[6].id,
    data.spotify_search_track.RH.tracks[9].id,
    data.spotify_search_track.Morat.tracks[*].id,
    data.spotify_search_track.NTVG.tracks[*].id,
  ])

}

#Link a nuestra playlist
output "playlist_url" {
  value = "https://open.spotify.com/playlist/${spotify_playlist.playlist.id}"
}

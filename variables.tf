variable "spotify_api_key" {
  description = "La Key se genera con el docker -> no te olvides del archivo que esta en ./ENV/spotify.env -> /bin/bash docker-run.sh"
  type        = string
}
variable "SPOTIFY_CLIENT_ID" {
  description = "Tu id generado en developer.spotify"
  default     = "Tu id generado en developer.spotify"
  type        = string
}
variable "SPOTIFY_CLIENT_SECRET" {
  description = "Tu secreto generado en developer.spotify"
  default     = "Tu secreto generado en developer.spotify"
  type        = string
}

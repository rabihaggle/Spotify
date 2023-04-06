terraform {
  required_providers {
    spotify = {
      source  = "conradludgate/spotify"
      version = "0.2.7"
    }
    null = {
      source  = "hashicorp/null"
      version = "~> 3.2.1"
    }
  }

}


provider "spotify" {
  api_key = var.spotify_api_key
}

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_spotify"></a> [spotify](#requirement\_spotify) | 0.2.7 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_local"></a> [local](#provider\_local) | 2.4.0 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.4.3 |
| <a name="provider_spotify"></a> [spotify](#provider\_spotify) | 0.2.7 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [local_file.config_file](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file) | resource |
| [random_shuffle.tracks_shuffle](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/shuffle) | resource |
| [spotify_playlist.playlist](https://registry.terraform.io/providers/conradludgate/spotify/0.2.7/docs/resources/playlist) | resource |
| [spotify_playlist.playlist_shuffle](https://registry.terraform.io/providers/conradludgate/spotify/0.2.7/docs/resources/playlist) | resource |
| [spotify_search_track.BEP](https://registry.terraform.io/providers/conradludgate/spotify/0.2.7/docs/data-sources/search_track) | data source |
| [spotify_search_track.Morat](https://registry.terraform.io/providers/conradludgate/spotify/0.2.7/docs/data-sources/search_track) | data source |
| [spotify_search_track.NTVG](https://registry.terraform.io/providers/conradludgate/spotify/0.2.7/docs/data-sources/search_track) | data source |
| [spotify_search_track.RH](https://registry.terraform.io/providers/conradludgate/spotify/0.2.7/docs/data-sources/search_track) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_SPOTIFY_CLIENT_ID"></a> [SPOTIFY\_CLIENT\_ID](#input\_SPOTIFY\_CLIENT\_ID) | Tu id generado en developer.spotify | `string` | `"Tu id generado en developer.spotify"` | no |
| <a name="input_SPOTIFY_CLIENT_SECRET"></a> [SPOTIFY\_CLIENT\_SECRET](#input\_SPOTIFY\_CLIENT\_SECRET) | Tu secreto generado en developer.spotify | `string` | `"Tu secreto generado en developer.spotify"` | no |
| <a name="input_spotify_api_key"></a> [spotify\_api\_key](#input\_spotify\_api\_key) | La Key se genera con el docker -> no te olvides de generar el archivo .env -> /bin/bash docker-run.sh | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_NTV"></a> [NTV](#output\_NTV) | Los datos de NTV -> limit 10 |
| <a name="output_Red_Hot"></a> [Red\_Hot](#output\_Red\_Hot) | Miremos lo que hay adentro! |
| <a name="output_morat"></a> [morat](#output\_morat) | Mostramos todo el album del artista/grupo |
| <a name="output_playlist_url"></a> [playlist\_url](#output\_playlist\_url) | Link a nuestra playlist |
<!-- END_TF_DOCS -->
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_spotify"></a> [spotify](#requirement\_spotify) | 0.2.7 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_spotify"></a> [spotify](#provider\_spotify) | 0.2.7 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [spotify_playlist.playlist](https://registry.terraform.io/providers/conradludgate/spotify/0.2.7/docs/resources/playlist) | resource |
| [spotify_search_track.BEP](https://registry.terraform.io/providers/conradludgate/spotify/0.2.7/docs/data-sources/search_track) | data source |
| [spotify_search_track.Morat](https://registry.terraform.io/providers/conradludgate/spotify/0.2.7/docs/data-sources/search_track) | data source |
| [spotify_search_track.NTVG](https://registry.terraform.io/providers/conradludgate/spotify/0.2.7/docs/data-sources/search_track) | data source |
| [spotify_search_track.RH](https://registry.terraform.io/providers/conradludgate/spotify/0.2.7/docs/data-sources/search_track) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_spotify_api_key"></a> [spotify\_api\_key](#input\_spotify\_api\_key) | API KEY GENERADA CON EL DOCKER QUE LEVANTAMOS /bin/bash docker-run.sh | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_NTV"></a> [NTV](#output\_NTV) | Los datos de NTV -> limit 10 |
| <a name="output_Red_Hot"></a> [Red\_Hot](#output\_Red\_Hot) | Miremos lo que hay adentro! |
| <a name="output_morat"></a> [morat](#output\_morat) | Mostramos todo el album del artista/grupo |
| <a name="output_playlist_url"></a> [playlist\_url](#output\_playlist\_url) | Link a nuestra playlist |
<!-- END_TF_DOCS -->
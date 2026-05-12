# git_httpd_markdown

Markdown rendering layer for `git_httpd`. The image serves `.md` and `.mdh`
files through `strapdown.cgi`, deriving HTML metadata from document front matter,
Markdown content, and optional container-wide defaults.

## Environment variables

These variables provide site-wide defaults. Document front matter can still
override them where needed.

| Variable | Purpose |
| --- | --- |
| `STRAPDOWN_TITLE` | Default HTML title and fallback OpenGraph title. |
| `STRAPDOWN_DESCRIPTION` | Default regular meta description and fallback OpenGraph description. |
| `STRAPDOWN_OG_TITLE` | Default `og:title`. |
| `STRAPDOWN_OG_DESCRIPTION` | Default `og:description`. |
| `STRAPDOWN_OG_IMAGE` | Default `og:image` and `twitter:image`. Prefer an absolute PNG/JPG URL, ideally `1200x630`. |
| `STRAPDOWN_OG_SITE_NAME` | Default `og:site_name`. |
| `STRAPDOWN_OG_TYPE` | Default `og:type`; if unset, pages use `website`. |
| `STRAPDOWN_OG_URL` | Default `og:url`; if unset, the current request URL is used. |
| `STRAPDOWN_THEME` | Default Strapdown theme; if unset, pages use `readable`. |
| `STRAPDOWN_SHORTCUTICON` | Default favicon URL. |

Example:

```sh
STRAPDOWN_OG_SITE_NAME="Review site"
STRAPDOWN_OG_IMAGE="https://example.org/assets/opengraph.png"
```

Quoted environment values are tolerated, but plain unquoted values are preferred
when your deployment format allows them.

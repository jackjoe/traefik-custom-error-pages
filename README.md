[![Docker Automated build](https://img.shields.io/docker/automated/jackjoe/traefik-custom-error-pages.svg)](https://hub.docker.com/r/jackjoe/traefik-custom-error-pages/)

# Custom error pages for Traefik

A bunch of custom error pages for Traefik built with [Jekyll](https://jekyllrb.com/).

## Installation

```bash
$ bundle install
```

## Development

The current folder will be generated into ./\_site :

```bash
$ jekyll build
```

Build the site on the preview server :

```bash
$ jekyll serve
$ open http://127.0.0.1:4000/
```

## Production

## How to use with Traefik and Docker

Labels are already define in the image to work with Traefik.

To use it in production just run the container :

```bash
$ docker run -d --restart always guillaumebriday/traefik-custom-error-pages
```

## Credits

We used the [Laravel](https://laravel.com/) default HTTP error pages.
Everything was set originally by [guillaumebriday](https://github.com/guillaumebriday/traefik-custom-error-pages)

## Contributing

Do not hesitate to contribute to the project by adapting or adding features ! Bug reports or pull requests are welcome.

## License

This project is released under the [MIT](http://opensource.org/licenses/MIT) license.

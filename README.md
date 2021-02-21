## kegcop_web_api [![Build Status](https://travis-ci.org/ipatch/kegcop-web.svg?branch=master)](https://travis-ci.org/ipatch/kegcop-web)

> A rails app powering ⚡️ the API portion of [kegcop.chrisrjones.com](http://kegcop.chrisrjones.com)

## Stack

<a id="stack"></a>

- Ruby 2.6.3
- Ngnix 1.10.3
- Puma 3.12.4
- JS Runtime: Node.js (V8)

## Deployment

<a id="deployment"></a>

```shell
echo "rvm use [RUBY_VERSION_DEFINED_FOR_THIS APP]"
echo "as of March 4, 2020 👇"
rvm ues 2.6.3
ssh-agent
ssh-add ~/.ssh/id_rsa
cap production deploy
```

> Keep bundler ≤ 1.17.x in order to deploy a rails 4.2.x app

### / Deployment / heroku

the below error will be rendered in a browser if a `secrets.yml` file is not present

```
An unhandled lowlevel error occurred. The application logs may have details.
```

<a id="system-deps"></a>

## System dependencies

- Postgres
- [ImageMagick](https://github.com/ImageMagick/ImageMagick)


## Working with `curl`

<a id="working-with-curl"></a>

> [httpie](https://github.com/jakubroztocil/httpie) is a sensible alternative to using `curl`

To test the following `documents` endpoint in this application

```shell
curl -I localhost:3000/documents
```

The above `curl` request will print just the headers for the `documents` endpoint.

The `-X` flag specifies the command request, ie. `GET`, `POST`, `DELETE`, `PATCH`.

To execute a `GET` request on an endpoint

```shell
curl http://localhost:3000/documents
```

To force a `JSON` response from an endpoint

```shell
curl --header "Accept:application/json" http://localhost:3000/documents
```

To include the headers in the response, use `-i` flag.

To test sending a `csv` file to the csv_files endpoint

```shell
curl -X POST -F "csv_file=@/path/to/mr-fancy-pants.csv" localhost:3000/documents
```

The above `curl` command should successfully send a file to the `documents` endpoint.

## Useful Links

<a id="useful-links"></a>

- [How to Import CSV files using rails](http://www.mattmorgante.com/technology/csv)

## TODOs

<a id="todos"></a>

- [x] ~~deploy app to heroku~~ 
- [x] ~~exp with ruby 2.6.5, and possibly upgrade app to use ruby 2.6.5~~
- [x] ~~flesh out README~~

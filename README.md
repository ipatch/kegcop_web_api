## kegcop_web_api [![Build Status](https://travis-ci.org/ipatch/kegcop-web.svg?branch=master)](https://travis-ci.org/ipatch/kegcop-web)

> A rails app powering ⚡️ the API portion of [kegcop.chrisrjones.com](http://kegcop.chrisrjones.com)

<a id="stack"></a>

## Stack

- Ruby 2.5.3
- Ngnix 1.10.3
- Puma 3.11.2
- JS Runtime: Node.js (V8)

<a id="system-deps"></a>

## System dependencies

- Postgres
- [ImageMagick](https://github.com/ImageMagick/ImageMagick)

<a id="working-with-curl"></a>

## Working with `curl`

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

<a id="useful-links"></a>

## Useful Links

- [How to Import CSV files using rails](http://www.mattmorgante.com/technology/csv)

## TODOs

- [x] ~~flesh out README~~

# kegcop_web_api [![Build Status](https://travis-ci.org/ipatch/kegcop-web.svg?branch=master)](https://travis-ci.org/ipatch/kegcop-web)

> This is the rails app that powers ⚡️ the API portion of [kegcop.chrisrjones.com](kegcop.chrisrjones.com)

## Stack
- Ruby 2.3.1
- Ngnix 1.10.3
- Puma 3.11.2
- JS Runtime: Node.js (V8)

##  System dependencies
- Postgres
- [ImageMagick](https://github.com/ImageMagick/ImageMagick)

## Working with `curl`

> [httpie](https://github.com/jakubroztocil/httpie) is a sensible alternative to using `curl`

To test the following `documents` endpoint in this application
```fish
curl -I localhost:3000/documents
```
The above `curl` request will print just the headers for the `documents` endpoint.

The `-X` flag specifies the command request, ie. `GET`, `POST`, `DELETE`, `PATCH`.

To execute a `GET` request on an endpoint
```fish
curl http://localhost:3000/documents
```

To force a `JSON` response from an endpoint
```fish
curl --header "Accept:application/json" http://localhost:3000/documents
```

To include the headers in the response, use `-i` flag.

To test sending a `csv` file to the csv_files endpoint
```fish
curl -X POST -F "csv_file=@/path/to/mr-fancy-pants.csv" localhost:3000/documents
```

The above `curl` command should successfully send a file to the `documents` endpoint.

## TODO
- [x] ~~flesh out README~~



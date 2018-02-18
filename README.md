# kegcop_web_api [![Build Status](https://travis-ci.org/ipatch/kegcop-web.svg?branch=master)](https://travis-ci.org/ipatch/kegcop-web)

> This is the rails app that powers ⚡️ the API portion of [kegcop.chrisrjones.com](kegcop.chrisrjones.com)

## Stack
- Ruby 2.3.1
- Ngnix 1.10.3
- Puma 3.11.2

##  System dependencies
- Postgres

## Working with `curl`

To test the following csv_files endpoint in this application
```fish
curl -I localhost:3000/api/csv_files
```
The above `curl` request will print just the headers for the csv_files endpoint.

The `-X` flag specifies the command request, ie. `GET`, `POST`, `DELETE`, `PATCH`.



## TODO
- [ ] flesh out README



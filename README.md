# NodeJS Base image

[![hope/nodejs](https://img.shields.io/badge/docker-hope/nodejs-brightgreen.svg)](https://hub.docker.com/r/hope/nodejs/)

Base image for NodeJS containers. Contains **node** and **npm**.

## Versions

* `latest` – latest version of NodeJS. Use this if you want always be up to date
* `6` – latest NodeJS release of 6.x branch

## Usage

Run to get into REPL
    
    docker run -it --rm hope/nodejs

Execute .js file
    
    docker run -it --rm hope/nodejs app.js

Use as base image for your app

    FROM hope/nodejs

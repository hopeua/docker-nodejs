# NodeJS Base image

[![Codefresh build status]( https://g.codefresh.io/api/badges/build?repoOwner=HopeUA&repoName=docker-nodejs&branch=6&pipelineName=main&accountName=hopeua&type=cf-1)]( https://g.codefresh.io/repositories/HopeUA/docker-nodejs/builds?filter=trigger:build;branch:6;service:592d25342326de000181b2b3~main) [![Github](https://img.shields.io/github/stars/HopeUA/docker-nodejs.svg?style=social&label=Star)](https://github.com/HopeUA/docker-nodejs)

Base image for NodeJS containers. Contains **node** and **npm**.

## Versions

* `latest` – LTS version of NodeJS. Use this if you want always be up to date with stable branch
* `6` – latest NodeJS release of 6.x branch
* `7` – latest NodeJS release of 7.x branch

## Usage

Run to get into REPL
    
    docker run -it --rm hope/nodejs

Execute .js file
    
    docker run --rm hope/nodejs app.js

Use as base image for your app

    FROM hope/nodejs

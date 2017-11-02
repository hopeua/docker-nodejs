# NodeJS Base image

Base image for NodeJS containers. Contains **node** and **npm**.

## Versions

* `latest` – LTS version of NodeJS. Use this if you want always be up to date with stable branch
* `8` – LTS version
* `9` – Current version
* `6` – old LTS version

## Usage

Run to get into REPL
    
    docker run -it --rm hope/nodejs

Execute .js file
    
    docker run --rm hope/nodejs app.js

Use as base image for your app

    FROM hope/nodejs

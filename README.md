# Modelbrouwers phpBB3.x forum

A phpBB 3.1 installation with the Modelbrouwers.nl extensions.

## Getting started

### Obtaining the code

1. Download the [latest phpBB 3.1 release](https://www.phpbb.com/files/release/phpBB-3.1.12.zip)
2. Extract the code in the root of this repository. A `phpBB3` directory should
   be created, containing the phpBB3 source.
3. Clone the extensions. Make sure to clone these as siblings to the `forum`
   repository.

   * `git clone git@github.com:modelbrouwers/php-ext-auth-django.git`
   * `git clone git@github.com:modelbrouwers/phpbb-modelbrouwers.git`

Your document structure should look like:

    ➜  modelbrouwers tree -L 2
    .
    ├── forum
    │   ├── docker-compose.yml
    │   ├── Dockerfile
    │   ├── phpBB3
    │   └── README.md
    ├── phpbb-modelbrouwers
    │   ├── command
    │   ├── composer.json
    │   ├── composer.lock
    │   ├── config
    │   ├── event
    │   ├── ext.php
    │   ├── Gulpfile.js
    │   ├── language
    │   ├── migrations
    │   ├── package.json
    │   ├── sass
    │   ├── staticfiles
    │   ├── styles
    │   └── yarn.lock
    └── php-ext-auth-django
        ├── adm
        ├── auth
        ├── composer.json
        ├── config
        ├── event
        ├── ext.php
        ├── language
        ├── LICENSE
        └── README.md

### Bringing up the services

Make sure you have Docker and Docker-Compose installed on your system. Then,
bring up the services:

    docker-compose up -d

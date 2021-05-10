## Setup

These instructions assume docker engine and docker-compose are installed.
Installation is beyond the scope of this document, but instructions can be found here: https://docs.docker.com/compose/install/

Clone this repo (https://github.com/pipertownley/sinatra-sample-app.git)
```
$ git clone https://github.com/pipertownley/sinatra-sample-app.git
$ cd sinatra-sample-app
```

Create an environment file `.env`
`$ cp env.example .env`

Edit `.env` and set the environment variables appropriately.
The defaults should work fine for development, but be sure to change these in production.  
```
PG_DATABASE='app'
PG_USER='app'
PG_PASSWORD='app'
```

Initialize database and app container
`$ ./setup.sh`

## Usage
Start dev server
`$ docker-compose up`

Work on app in `app/src`

Stop dev server
`$ docker-compose down`

# TODO
Auto-reload on file changes.
Tests

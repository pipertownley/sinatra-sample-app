## Setup

Create an environment file `.env`
`cp env.example .env`

Edit `.env` and set the environment variables appropriately.
The defaults should work fine for development, but be sure to change these in production.  
```
PG_DATABASE='app'
PG_USER='app'
PG_PASSWORD='app'
```

Initialize database and app container
`./init.sh`

## Usage
Start dev server
`docker-compose up -d`

Work on app in `app/src`

App will auto-reload on file changes.
# TODO
Stop dev server
`docker-compose down`

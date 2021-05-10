#!/bin/bash

# Start the database container
docker-compose run -d db

# Initialize the application database
docker-compose run web rake db:setup

docker-compose down

# Docker Mailtrain

This repository lets you run Mailtrain in multiple Docker containers. Docker Compose is used for orchestration.

## Containers

This compose environment uses 3 containers:

- mariadb: A database that contains Mailtrain data.
- redis: A redis server used for session storage and for caching state between multiple processes. 
- mailtrain: The [Mailtrain](https://github.com/andris9/mailtrain) application

## Requirements

You need to have [Docker Compose](https://docs.docker.com/compose/install/) installed.

## How to use it?

### Configuration

You can edit the maridb environment variables in `docker-compose.yml` to set your smtp and mailtrain settings

You can edit the Mailtrain configuration file in `config/mailtrain/production.toml`

### Start the environment

In the project root directory run the following command:

`docker-compose up -d`

This command build and run the containers.

### Log in to the containers

You can log in to any of the container by running the following command:

`docker exec -i -t <container-name> bash`

### Access to Mailtrain

You can acces to the Mailtrain app via the port `3000`. In your browser at the following address `http://localhost:3000`.




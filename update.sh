#!/usr/bin/env bash

docker-compose pull && docker-compose up --build -d --remove-orphans 

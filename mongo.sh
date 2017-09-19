#!/usr/bin/env bash

rm -rf data
mkdir -p data/db
mongod --dbpath data/db --logpath data/mongo.log &
sleep 5

#!/bin/bash

# Check if the requirepass directive is already set in redis.conf
if grep -q "^requirepass" /etc/redis/redis.conf; then
    # Extract the stored password from the redis.conf file
    STORED_PASSWORD=$(grep "^requirepass" /etc/redis/redis.conf | awk '{print $2}')

    # Check if the provided password matches the stored password
    if [ "$REDIS_PASSWORD" == "$STORED_PASSWORD" ]; then
        echo "Authentication successful. Starting Redis with the stored password."
    else
        echo "Authentication failed: The provided REDIS_PASSWORD does not match the stored password."
        exit 1
    fi
else
    # If the password is not set, append it to the redis.conf file
    echo "requirepass ${REDIS_PASSWORD}" >> /etc/redis/redis.conf
    echo "Password set for the first time in redis.conf"
fi

# Start Redis server with the updated configuration
exec redis-server /etc/redis/redis.conf
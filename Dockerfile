#delta

FROM   ubuntu:14.04


# Make sure we don't get notifications we can't answer during building.
ENV    DEBIAN_FRONTEND noninteractive


# Download and install everything from the repos.


# Load in all of our config files.
ADD    ./scripts/start /start


# Fix all permissions
RUN    chmod +x /start


# 25565 is for minecraft
EXPOSE 25565
EXPOSE 8080

# /data contains static files and database
VOLUME ["/data"]

# /start runs it.
CMD    ["/start"]

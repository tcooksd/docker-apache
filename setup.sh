#!/bin/bash

# Check if Docker is installed
if command -v docker &> /dev/null; then
    echo "Docker is installed."
    
    # Check Docker version
    docker_version=$(docker --version | awk '{print $3}' | cut -d, -f1)
    echo "Docker version: $docker_version"
    
    # Check if Docker daemon is running
    if docker info &> /dev/null; then
        echo "Docker daemon is running."
        echo "  "
        echo "You can run 'docker build -t my-apache-server .' to build then container"
        echo "Then run 'docker run -p 8080:80 my-apache-server' to launch the container to port 8080"
        echo "Now access this port by opening a browser to 'http://localhost:8080/' " 
    else
        echo "Docker daemon is not running."
    fi
else
    echo "Docker is not installed. Please install Docker to use this script."
fi

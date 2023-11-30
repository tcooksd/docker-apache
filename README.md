Docker Apache
Docker is a prerequisite for testing.

The local-apache folder contains an images directory and index.html for the background image of the web page and the webpage itself.
setup.sh is a basic shell script that you can run to check your system for Docker and provides instructions if it's not installed.
The Dockerfile controls the build of the Docker container. Modify it if you want to make changes to the web page.
Usage
This repository serves as an example for testing HTML via Apache. If you don't have Apache installed or don't want to take the time to set it up, you can run the following command to clone this repository:


git clone https://github.com/tcooksd/docker-apache.git
How to Use
Navigate to the local-apache folder.
Run the setup.sh script to check for Docker and get installation instructions if needed.
Customize the Dockerfile to modify the web page as per your requirements.
Feel free to explore and experiment with HTML via Apache using this Dockerized setup.








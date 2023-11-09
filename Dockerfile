# Use an official Apache image as a base
FROM httpd:latest

# Copy your local website files into the container
COPY ./local-apache /usr/local/apache2/htdocs/

# Expose port 80 (default for HTTP)
EXPOSE 80

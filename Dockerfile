# Use an official PHP runtime as a parent image
FROM php:7.4-apache

# Set the working directory to /var/www/html
WORKDIR /var/www/html

# Copy the current directory contents into the container at /var/www/html
COPY ./local-php /var/www/html

# Install any needed packages specified in requirements.txt
# For example, if you have a PHP project that uses Composer, you can install dependencies like this:
# RUN composer install

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME World

# Run app.py when the container launches
CMD ["apache2-foreground"]

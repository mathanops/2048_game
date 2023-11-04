# Use a base image (e.g., Ubuntu 22.04)
FROM ubuntu:22.04

# Set the working directory inside the container
WORKDIR /app

# Update the package repository and install NGINX
RUN apt-get update && \
    apt-get install -y nginx

# Configure NGINX to run in the foreground
RUN echo "daemon off;" >> /etc/nginx/nginx.conf


# Copy the remaining files from your local directory into the container's '/app'
COPY . /app

# Expose port 3001 for the NGINX web server
EXPOSE 80

# Start NGINX and your 'js' application
CMD ["./app"]

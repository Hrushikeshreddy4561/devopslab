# Use Nginx as the base image
FROM nginx:latest

# Set working directory
WORKDIR /usr/share/nginx/html

# Copy HTML file into the container
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]

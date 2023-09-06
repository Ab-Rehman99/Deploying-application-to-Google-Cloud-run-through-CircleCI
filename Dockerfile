# Use an official Nginx runtime as the base image
FROM nginx:alpine

# Copy your HTML file to the default Nginx web root directory
COPY index.html /usr/share/nginx/html
COPY ads.txt /usr/share/nginx/html/ads.txt

# Expose port 80 (the default port for Cloud Run))
EXPOSE 80

# Define the command to run when the container starts (Nginx)
CMD ["nginx", "-g", "daemon off;"]

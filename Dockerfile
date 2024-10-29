# Use the lightweight Nginx image based on Alpine Linux
FROM nginx:alpine

# Copy the pip packages to the Nginx server directory
COPY packages /usr/share/nginx/html

# Remove the default index.html if it exists
RUN rm /usr/share/nginx/html/index.html

# Copy your custom Nginx configuration file into the appropriate directory
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Optionally expose port 80 (or change this to match your service's port)
EXPOSE 80


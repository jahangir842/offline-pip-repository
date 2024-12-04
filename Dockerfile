# Use the lightweight Nginx image based on Alpine Linux
FROM nginx:alpine

# Copy the pip packages to the Nginx server directory (if docker volume used instead of bind)
# COPY packages /usr/share/nginx/html

# Copy your custom Nginx configuration file into the appropriate directory
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy the entrypoint script and make it executable
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Set the entrypoint
ENTRYPOINT ["/entrypoint.sh"]

# Optionally expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]

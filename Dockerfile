FROM nginx:alpine

# Copy the pip packages to the Nginx server directory
COPY packages /usr/share/nginx/html

# Expose port 80
EXPOSE 80

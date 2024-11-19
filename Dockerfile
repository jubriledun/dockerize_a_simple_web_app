# Use the official Nginx image as the base image
FROM nginx:alpine

# Set the working directory in the container
WORKDIR /usr/share/nginx/html

# Remove the default Nginx HTML files
RUN rm -rf ./*

# Extract and copy the web app files to the Nginx HTML directory
ADD baristacafe.tar.gz .

# Expose port 80 to the host
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]

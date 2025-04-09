# Use the official nginx image as a base image
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Remove the default nginx static files
RUN rm -rf ./*

# Copy the project files into the nginx html directory
COPY . .

# Expose port 80 to serve the application
EXPOSE 80
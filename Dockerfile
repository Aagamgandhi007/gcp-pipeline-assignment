# Use Node.js as the base image
FROM node:18

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json from the correct location
COPY "Assignment 1 Files/package.json" "Assignment 1 Files/package-lock.json" ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY "Assignment 1 Files" ./

# Expose the application port
EXPOSE 8080

# Start the application
CMD ["npm", "start"]

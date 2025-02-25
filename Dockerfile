# Use Node.js as the base image
FROM node:18

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json from the new folder
COPY assignment1_files/package.json assignment1_files/package-lock.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY assignment1_files ./

# Expose the application port
EXPOSE 8080

# Start the application
CMD ["npm", "start"]

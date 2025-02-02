# Use official Node.js image as a base
FROM node:14-alpine

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose the application on port 80
EXPOSE 80

# Command to run the application
CMD ["npm", "start"]

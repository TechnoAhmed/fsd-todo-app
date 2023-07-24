# Use an official Node.js runtime as a base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json (if available) to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files to the container
COPY . .

# Expose the port on which the application runs (if applicable)
# Change <PORT_NUMBER> to the actual port number used by the application
EXPOSE <PORT_NUMBER>

# Specify the command to run your application
CMD ["npm", "start"]

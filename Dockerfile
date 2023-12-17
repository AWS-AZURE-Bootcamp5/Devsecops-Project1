# Use Node.js 16 as the base image
FROM node:16

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Build the React app
RUN npm run build

# Expose port 3000 for the React app
EXPOSE 3000

# Start the React app
CMD ["npm", "start"]

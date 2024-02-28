# Use a lightweight base image
FROM node:14-alpine

# Set the working directory
WORKDIR /reddit-clone

# Copy only the necessary files for dependency installation
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose the necessary port
EXPOSE 3000

# Command to run your application
CMD ["npm", "run", "dev"]

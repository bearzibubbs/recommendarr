FROM registry.redhat.io/ubi9/nodejs-20:latest

# Create app directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy server files
COPY server ./server

# Set environment variables
ENV DOCKER_ENV=true
ENV PORT=3050

# Expose port
EXPOSE 3050

# Start the API server
CMD ["node", "server/server.js"]
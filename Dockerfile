# Use Node.js v14 as the base image
FROM node:14

# Set working directory
WORKDIR /app

# Copy all source code to working directory
COPY . .

# Set environment variables
ENV NODE_ENV=production DB_HOST=item-db

# Install dependencies and build the application
RUN npm install --production --unsafe-perm && npm run build

# Expose port 8080
EXPOSE 8080

# Start the server
CMD ["npm", "start"]
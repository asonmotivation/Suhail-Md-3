# /Dockerfile
FROM node:18-alpine

WORKDIR /app

# Install dependencies first for better caching
COPY package*.json ./
RUN npm ci --production

# Copy app files
COPY . .

# Set environment variables
ENV PORT=3000

# Start command
CMD ["npm", "start"]

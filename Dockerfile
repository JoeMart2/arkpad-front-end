# Use Node.js image
FROM node:18

WORKDIR /app

# Install dependencies
COPY package.json package-lock.json ./
RUN npm install

# Copy application code
COPY . .

# Build the Next.js app
RUN npm run build

# Start Next.js server
CMD ["npm", "run", "start"]

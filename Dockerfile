# 1. Use the official Node.js 18 image
FROM node:18-alpine

# 2. Set the working directory in the container
WORKDIR /app

# 3. Copy the package.json and package-lock.json
COPY package.json package-lock.json ./
RUN npm install --production

# 4. Copy the rest of the application code
COPY . .

# 5. Build the application
RUN npm run build

# 6. Start the application
CMD ["npm", "start"]

# 7. Expose port 3000 (default port Next.js)
EXPOSE 3000
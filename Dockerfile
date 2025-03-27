FROM node:18

WORKDIR /app

# Only copy package.json since there's no lockfile
COPY package.json ./

# Install dependencies
RUN npm install --production

# Copy the rest of the files
COPY . .

EXPOSE 3000

CMD ["node", "server.js"]

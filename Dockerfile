#pull the base image which gives all tools and libraries
FROM node:23-slim

# Install pnpm
RUN corepack enable && corepack prepare pnpm@latest --activate

#create the folder where the app code is stored
WORKDIR /app

# Copy package files first
COPY package.json pnpm-lock.yaml ./

# Install dependencies
RUN pnpm install

# Copy all files
COPY . .

EXPOSE 8000
CMD ["pnpm", "run", "dev"]
#pull the base image which gives all tools and libraries
FROM node:18-alpine

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

EXPOSE 3000
CMD ["pnpm", "run", "dev"]
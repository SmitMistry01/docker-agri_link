#pull the base image which gives all tools and libraries
FROM node:18-alpine AS builder

#create the folder where the app code is stored
WORKDIR /app

# copy the source code from the HOST machine to the container
COPY src/main.tsx /app/main.tsx

RUN pnpm run dev

CMD ["nginx", "-g", "daemon off;"]


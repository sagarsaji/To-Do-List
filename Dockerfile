# Stage 1: Build the application
FROM node:latest as node
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build --prod
# Stage 2: Serve the built application using Nginx op path
FROM nginx:alpine
COPY --from=node /app/dist/todo /usr/share/nginx/html

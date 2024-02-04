# Use the official Node image as a base image
FROM node:21-alpine as build

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire project to the container
COPY . .

# Build the React app
RUN npm run build

# Use Nginx as the production server
FROM nginx:alpine

# Copy the custom nginx.conf to the container
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy the build files from the build stage to the nginx web root
COPY --from=build /app/build /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx when the container runs
CMD ["nginx", "-g", "daemon off;"]

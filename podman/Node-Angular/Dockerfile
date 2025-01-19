# Define build arguments for Node and Angular versions
ARG NODE_VERSION=18.19.1
ARG ANGULAR_VERSION=18

# Use the specified Node.js image as the base image
FROM node:${NODE_VERSION}-alpine

# Install Angular CLI globally using the specified version
RUN npm install -g @angular/cli@${ANGULAR_VERSION}

# Set the working directory
WORKDIR /app

# Set the entrypoint to a shell
ENTRYPOINT ["/bin/bash"]

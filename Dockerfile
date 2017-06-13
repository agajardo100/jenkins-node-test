# Dockerfile from node.js.org

# Define what base image to build from
# LTS version boron 
FROM node:boron

# Create a directory to hold app code inside the image
RUN mkdir -p /usr/src/app

# Set working directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install

# Bundle app source
COPY . /usr/src/app

# Bind app to port
EXPOSE 8080

# define the command to run app, which defines your runtime
CMD [ "npm", "start" ]
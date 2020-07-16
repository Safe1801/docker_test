# Test web-app to use with Pluralsight courses and Docker Deep Dive book
# Linux x64
# how to build an app into docker image down below is the content
# Each line represent an instruction on how to build an image
# Use the docker image command to create a new image using the instructions
# in this file

FROM alpine

LABEL maintainer="nigelpoulton@hotmail.com"

# Install Node and NPM
RUN apk add --update nodejs nodejs-npm

# Copy app to /src
COPY . /src

WORKDIR /src

# Install dependencies
RUN  npm install

EXPOSE 8080

ENTRYPOINT ["node", "./app.js"]

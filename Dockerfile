FROM node:argon

# Create app directory
RUN mkdir -p /Users/Shared/Jenkins/Home/workspace/HelloWorld/images
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /Users/Shared/Jenkins/Home/workspace/HelloWorld/images
RUN npm install

# Bundle app source
COPY . /Users/Shared/Jenkins/Home/workspace/HelloWorld/images

EXPOSE 8000
CMD [ "npm", "start" ]
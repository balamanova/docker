FROM node:12.2.0-alpine

# set working directory
WORKDIR /registry

# add `/app/node_modules/.bin` to $PATH
ENV PATH /registry/node_modules/.bin:$PATH

# install and cache app dependencies
COPY package.json /registry/package.json
RUN yarn

# start app
CMD ["yarn", "start"]
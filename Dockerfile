FROM       node:12-alpine
WORKDIR    /code
ADD        ./package.json /code/package.json
ADD        ./yarn.lock /code/yarn.lock
RUN        yarn install
ADD        . /code
ENV        HOST 0.0.0.0
ENV        PORT 5000
RUN        yarn build
EXPOSE     5000
CMD        /usr/local/bin/node /code/node_modules/.bin/nuxt start

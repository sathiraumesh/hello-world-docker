# Container image that runs your code
FROM node:14.17

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh
COPY test-app ./test-app
WORKDIR ./test-app

RUN npm install
RUN npm run test

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]



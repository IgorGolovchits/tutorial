FROM node:8.12.0
RUN mkdir /src
WORKDIR /src
COPY ./package.json /src/package.json
COPY ./package-lock.json /src/package-lock.json
COPY ./index.js /src/index.js
RUN npm install
COPY . /app
CMD node /src/index.js
EXPOSE 8080
FROM node:12-alpine

RUN apk add --no-cache git vim

RUN mkdir -p /app

RUN git clone https://github.com/burakkaraceylan/threejs-boilerplate /app/threejs

WORKDIR /app/threejs

RUN npm install

EXPOSE 3001

CMD ["npm", "start"]

RUN echo "node_modules" > .dockerignore && echo "npm-debug.log" >> .dockerignore

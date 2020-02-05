FROM node:12

WORKDIR /usr/src/lhci
COPY package.json .
COPY lighthouserc.json .
RUN npm install
VOLUME /data
EXPOSE 9042
CMD [ "npm", "start" ]

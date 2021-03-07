FROM node:14
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
ENV PORT=8080
ENV DB_URL=mongodb://mongodb:27017
EXPOSE 8080
CMD [ "node", "server.js" ] 
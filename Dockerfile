FROM node

#set context
WORKDIR /app

COPY package.json .

#exec only on build stage
RUN npm install

#copy all files from current dir to the context
COPY . .

ENV PORT 4200

#bind port
EXPOSE $PORT

VOLUME [ "/app/data" ]

#exec on start up
CMD ["node", "app.js"]
FROM node:14.15.3-alpine3.12  
    USER node
    WORKDIR /usr/src/app 
    COPY --chown=node:node package*.json ./
    RUN npm install --quiet
    COPY --chown=node:node . ./
    CMD ["node", "index.js"]

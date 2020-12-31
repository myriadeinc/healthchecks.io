FROM node:14.15.3-alpine3.12  
    WORKDIR /usr/src/app 
    RUN chown -R node:node /usr/src/app
    USER node
    
    COPY --chown=node:node package*.json ./
    RUN npm install --quiet
    COPY --chown=node:node . ./
    CMD ["node", "index.js"]

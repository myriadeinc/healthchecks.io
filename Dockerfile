FROM node:14.15.3-alpine3.12  
    USER node
    WORKDIR /usr/src/app 
    RUN npm install --quiet
    CMD ["node", "index.js"]
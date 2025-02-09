FROM node:12
 
# Create app directory


COPY forethought-app/package*.json ./
 
RUN npm install
 
# Bundle app source
COPY . .

EXPOSE 8080
CMD [ "node", "index.js" ]

FROM node

RUN mkdir /app/

WORKDIR /app/

COPY . .

RUN npm install

CMD ["npm", "run", "dev"]
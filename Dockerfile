FROM node:slim as build

RUN mkdir /app/

WORKDIR /app/

COPY . .

RUN npm install

RUN npm run build



FROM nginx:stable-bullseye-perl

RUN mkdir /www/build/

COPY --from=build /app/dist /www/build
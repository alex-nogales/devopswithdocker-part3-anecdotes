FROM ubuntu:18.04

EXPOSE 3000
WORKDIR /usr/src/app
COPY . .

RUN apt update && apt install curl -y
RUN curl -sL https://deb.nodesource.com/setup_lts.x | bash -
RUN apt install -y nodejs
RUN npm install 
CMD ["npm", "start"]
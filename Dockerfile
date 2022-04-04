FROM node:16
RUN apt-get update
RUN apt-get install -y openjdk-11-jdk-headless vim ssh npm
RUN npm install -g pnpm
WORKDIR /usr/src/html
COPY . .
RUN pnpm i
EXPOSE 3001
CMD [ "npm","run","dev" ]
    FROM jenkins/jenkins:lts
    USER root
    RUN apt-get -y update && \
     apt-get install -y apt-transport-https ca-certificates curl gnupg2 software-properties-common
    RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add
    RUN add-apt-repository \
       "deb [arch=amd64] https://download.docker.com/linux/debian \
       $(lsb_release -cs) \
       stable"
    RUN apt-get update && \
     apt-get -y install docker-ce docker-ce-cli containerd.io
    RUN usermod -aG docker jenkins

    FROM node:14-alpine
    # install npm
    RUN apk add --update npm

    # create app directory
    WORKDIR /usr/src/app

    # copy package.json and package-lock.json
    COPY package*.json ./

    # install app dependencies
    RUN npm install

    # copy app source code
    COPY . .

    # expose port and start the app
    EXPOSE 3000
    CMD ["npm", "start"]
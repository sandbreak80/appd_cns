FROM node:8.17.0-alpine

RUN apk update
RUN apk add vim curl git zip wget

RUN git clone https://github.com/Appdynamics/CWOM-Action-Integration.git
RUN cd CWOM-Action-Integration
RUN npm install
RUN npm install common log4js@1.1.1 express morgan cookie-parser async needle moment https-proxy-agent http-proxy-agent q request-promise request ejs

WORKDIR /CWOM-Action-Integration
COPY config.json /CWOM-Action-Integration/config.json
RUN npm start

EXPOSE 3000

FROM ubuntu:latest

RUN apt-get update && apt-get install -y curl git

RUN curl -L https://raw.githubusercontent.com/Jigsaw-Code/outline-server/master/src/server_manager/install_scripts/install_server.sh -o install_server.sh

RUN git add Dockerfile
RUN git commit -m "Fix installer URL for Outline VPN"
RUN git push origin main

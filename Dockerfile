FROM ubuntu:22.04

RUN apt update && apt install -y curl sudo

RUN curl sudo bash -c "$(wget -qO- https://raw.githubusercontent.com/Jigsaw-Code/outline-server/master/src/server_manager/install_scripts/install_server.sh)"
RUN git add Dockerfile
RUN git commit -m "Fix installer URL for Outline VPN"
RUN git push origin main
CMD ["sleep", "infinity"]

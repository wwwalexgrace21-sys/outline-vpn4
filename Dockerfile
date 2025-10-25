FROM ubuntu:22.04

RUN apt update && apt install -y curl sudo

RUN sudo bash -c "$(curl -sS https://raw.githubusercontent.com/Jigsaw-Code/outline-server/master/src/server_manager/install_scripts/install_server.sh)"

CMD ["sleep", "infinity"]

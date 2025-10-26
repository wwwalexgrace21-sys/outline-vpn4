FROM ubuntu:latest

# System update + install dependencies
RUN apt-get update && apt-get install -y \
    curl \
    sudo \
    bash \
    git \
    gnupg \
    lsb-release

FROM docker:dind

RUN apk add --no-cache bash curl sudo

RUN curl -sS https://raw.githubusercontent.com/Jigsaw-Code/outline-server/master/src/server_manager/install_scripts/install_server.sh -o install_server.sh

RUN chmod +x install_server.sh

CMD ["bash", "install_server.sh"]

# Keep container running (optional)
CMD ["sleep", "infinity"]

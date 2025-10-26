# FROM ubuntu:latest

# # System update + install dependencies
# RUN apt-get update && apt-get install -y \
#     curl \
#     sudo \
#     bash \
#     git \
#     gnupg \
#     lsb-release

# FROM docker:dind

# RUN apk add --no-cache bash curl sudo

# RUN curl -sS https://raw.githubusercontent.com/Jigsaw-Code/outline-server/master/src/server_manager/install_scripts/install_server.sh -o install_server.sh

# RUN chmod +x install_server.sh

# CMD ["bash", "install_server.sh"]
# EXPOSE 3000

# # Keep container running (optional)
# CMD ["sleep", "infinity"]
# Outline Server အတွက် Dockerfile
# FROM ubuntu:22.04

# # Dependencies install
# RUN apt-get update && apt-get install -y \
#     curl wget sudo net-tools gnupg && \
#     apt-get clean

# # Outline install script ကို run
# RUN bash -c "$(wget -qO- https://getoutline.org/install_server.sh)" || true

# # Outline Server docker default port
# EXPOSE 1024-65535/tcp
# EXPOSE 1024-65535/udp

# CMD ["sleep", "infinity"]
# CMD ["npm","start"]

# # Default command
# CMD ["bash"]
# Node base image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package files and install
COPY package*.json ./
RUN npm install

# Copy rest of the code
COPY . .

# Expose port
EXPOSE 3000

# Start the app
CMD ["node", "server.js"]


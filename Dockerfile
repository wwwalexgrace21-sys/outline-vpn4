FROM ubuntu:latest

# System update + install dependencies
RUN apt-get update && apt-get install -y \
    curl \
    sudo \
    bash \
    git \
    gnupg \
    lsb-release

# Download Outline VPN server installer
RUN curl -sS https://raw.githubusercontent.com/Jigsaw-Code/outline-server/master/src/server_manager/install_scripts/install_server.sh -o install_server.sh

# Make it executable
RUN chmod +x install_server.sh

# Run the Outline VPN installer
RUN bash install_server.sh

# Keep container running (optional)
CMD ["sleep", "infinity"]

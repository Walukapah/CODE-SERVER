FROM codercom/code-server:latest

# Add sudo & apt support
USER root

# Install packages (example: curl, git, x11-utils)
RUN apt-get update && \
    apt-get install -y sudo curl git x11-utils && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Create coder user with passwordless sudo (optional)
RUN echo 'coder ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

# Switch back to coder user
USER coder

ENV PASSWORD=waluka

WORKDIR /home/coder/project

EXPOSE 8080

CMD ["code-server", "--bind-addr", "0.0.0.0:8080", "."]

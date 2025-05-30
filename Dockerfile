FROM codercom/code-server:latest

# Set environment variables
ENV PASSWORD=waluka

# Optional: Set working directory
WORKDIR /home/coder/project

# Expose default code-server port
EXPOSE 8080

# Start code-server
CMD ["code-server", "--bind-addr", "0.0.0.0:8080", "."]

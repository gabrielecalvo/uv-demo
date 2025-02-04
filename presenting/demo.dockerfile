FROM ubuntu:latest

# Install cURL
RUN apt-get update && apt-get install -y curl nano

# Set the working directory
WORKDIR /app

# Your additional configuration
CMD ["bash"]
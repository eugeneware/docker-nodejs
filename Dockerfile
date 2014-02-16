# Pull base image.
FROM ubuntu
MAINTAINER Eugene Ware <eugene@noblesamurai.com>

# Install Node.js
RUN apt-get update
RUN apt-get install -y python-software-properties
RUN add-apt-repository -y ppa:chris-lea/node.js
RUN apt-get update
RUN apt-get install -y nodejs
RUN apt-get install -y build-essential openssl libssl-dev pkg-config

# Append to $PATH variable.
RUN echo '\n# Node.js\nexport PATH="node_modules/.bin:$PATH"' >> /root/.bash_profile

# Define default command.
CMD ["node"]

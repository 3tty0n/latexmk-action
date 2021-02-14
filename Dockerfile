FROM micchon/texlive-full:latest

RUN apt-get update -q && apt-get install -y curl
RUN apt-get install -y fonts-noto-cjk fonts-noto-cjk-extra

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]

FROM ubuntu:18.04
WORKDIR /home
RUN apt-get update --fix-missing && apt install curl openjdk-11-jdk git maven --fix-missing -y
RUN adduser --disabled-password --gecos "" jenkins
RUN curl -fsSL https://get.docker.com/ | sh
ENTRYPOINT [ "sleep" ]
CMD ["3600"]
FROM ubuntu:24.04
RUN apt update
RUN apt install curl systemd -y
RUN curl https://sshx.io/get | sh -s run

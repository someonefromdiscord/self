FROM ubuntu:24.04
RUN apt update
RUN apt install curl systemd -y
RUN curl -fsSL https://tailscale.com/install.sh | sh
RUN tailscaled --tun=userspace-networking --socks5-server=localhost:1055 > /dev/null &
RUN tailscale up --ssh

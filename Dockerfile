FROM ubuntu:15.10

MAINTAINER Martin Ford <ford.j.martin@gmail.com>

# Install rsync and OpenSSH server
RUN apt-get update && \
    apt-get install -yq openssh-server

RUN mkdir /var/run/sshd

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]

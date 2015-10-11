FROM crux
MAINTAINER Shin Sterneck <shin at sterneck dot asia>

RUN ports -u

# Mirror is down for libpipeline
RUN rm -rf /usr/ports/*/libpipeline

RUN prt-get sysup
RUN prt-get depinst openssh

# password = welcome
RUN useradd -p '$1$Fg72Qgem$Bnuz3Z4qtM9ev6PPWc7Nz/' -m crux

# initialize SSH service once
RUN /etc/rc.d/sshd start

EXPOSE 22
CMD ["/usr/sbin/sshd","-D"]

FROM crux
MAINTAINER Shin Sterneck <shin at sterneck dot asia>

RUN ports -u && rm -rf /usr/ports/*/libpipeline && prt-get sysup && rm -rf /usr/ports/* 

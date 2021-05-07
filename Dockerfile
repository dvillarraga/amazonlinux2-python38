FROM amazonlinux:2

RUN yum install -y amazon-linux-extras shadow-utils \ 
        && amazon-linux-extras enable python3.8 \ 
        && yum install -y python38
RUN useradd python

USER python

COPY . /home/python

ENTRYPOINT ["/home/python/docker-entrypoint.sh"]
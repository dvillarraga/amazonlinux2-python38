FROM amazonlinux:2

RUN yum install -y amazon-linux-extras shadow-utils \ 
        && amazon-linux-extras enable python3.8 \ 
        && yum install -y python38
RUN useradd python



COPY . /usr/src/app

RUN ["chmod", "+x", "/usr/src/app/docker-entrypoint.sh"]

USER python

CMD ["/bin/bash"]
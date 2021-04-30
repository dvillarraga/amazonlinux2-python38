FROM amazonlinux:2
#                  for python          for useradd  for switch user    
RUN yum install -y amazon-linux-extras shadow-utils util-linux && amazon-linux-extras enable python3.8 && yum install -y python38
RUN useradd python
USER python

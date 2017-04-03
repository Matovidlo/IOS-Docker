FROM centos:6.6
#FROM fedora:latest
MAINTAINER Martin Vasko <xvasko12@stud.fit.vutbr.cz>

LABEL description="Docker pre skusanie IOS projektov, 1 dirgraph, 2 procesy"

RUN yum install -y gcc
RUN yum install -y unzip
#RUN yum -y update && yum install -y vim
#clone it before or within dockerfile
#RUN git clone IOSDocker
#WORKDIR "/IOSDocker"

#ADD install.sh /opt/
#first project
#if file does not match this value you can change it
#ADD dirgraph /opt/
ADD args.txt /opt/

#second project
# FIXME
#ADD proj2 /opt/proj2
ADD proj2.zip /opt/
#RUN chmod +x /opt/install.sh
WORKDIR "/opt"
RUN unzip proj2.zip
RUN make
RUN ./proj2 `cat args.txt`
#run with paramters, choose own params for project 1, 2. + specify which project should be checked
#RUN ./install.sh "$(< args.txt)" >> output.txt

FROM centos:6

MAINTAINER Martin Vasko <xvasko12@stud.fit.vutbr.cz>
MAINTAINER Pavel Parma <xparma02@stud.fit.vutbr.cz>

LABEL description="Docker image s centosem a prostředím pro C"

RUN yum install -y gcc
RUN yum install -y unzip

WORKDIR /code


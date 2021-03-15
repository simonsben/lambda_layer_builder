FROM amazonlinux

RUN yum install -y python37 && \
    yum install -y python3-pip && \
    yum install -y zip tree && \
    yum clean all

RUN python3.7 -m pip install --upgrade pip && \
    python3.7 -m pip install virtualenv

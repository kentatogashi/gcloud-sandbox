FROM centos:7
COPY google-cloud-sdk.repo /etc/yum.repos.d/
RUN yum install -y google-cloud-sdk kubectl vim
ENTRYPOINT ["tail", "-f" ,"/dev/null"]

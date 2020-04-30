FROM centos:7
ENV terraform_ver 0.12.24
COPY google-cloud-sdk.repo /etc/yum.repos.d/
RUN yum install -y google-cloud-sdk kubectl vim wget unzip && \
    echo "source <(kubectl completion bash)" >> ~/.bashrc && \
    wget https://releases.hashicorp.com/terraform/${terraform_ver}/terraform_${terraform_ver}_linux_amd64.zip && \
    unzip ./terraform_${terraform_ver}_linux_amd64.zip -d /usr/local/bin/
ENTRYPOINT ["tail", "-f" ,"/dev/null"]

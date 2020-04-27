FROM centos:7 as build
COPY google-cloud-sdk.repo /etc/yum.repos.d/
RUN yum install -y google-cloud-sdk kubectl vim
ENTRYPOINT ["tail", "-f" ,"/dev/null"]

#FROM busybox
#COPY --from=build /usr/lib64/google-cloud-sdk/bin/gcloud /bin/gcloud

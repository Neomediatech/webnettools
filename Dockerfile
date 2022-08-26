FROM johannesschafer/webnettools

USER root
RUN microdnf --disablerepo=bintray--ookla-rhel update

# update testssl.sh
RUN cd /testssl.sh && git config pull.rebase false && git pull

RUN echo "LC_ALL=en_US.UTF-8" >> /etc/environment && \
    echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen && \
    echo "LANG=en_US.UTF-8" > /etc/locale.conf 

USER 1001


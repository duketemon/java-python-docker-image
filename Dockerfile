FROM ubuntu:18.04

RUN \
    # Java
    apt update && apt -y upgrade &&\
    apt -y install software-properties-common &&\
    add-apt-repository ppa:linuxuprising/java &&\
    apt update &&\
    echo oracle-java13-installer shared/accepted-oracle-license-v1-2 select true | /usr/bin/debconf-set-selections && \
    apt install -y oracle-java13-installer &&\
    apt install oracle-java13-set-default &&\
    # Python
    apt install -y python3-pip &&\
    # cleaning up
    apt clean autoclean &&\
    apt autoremove --yes &&\
    rm -rf /var/lib/apt/lists/*

CMD bash

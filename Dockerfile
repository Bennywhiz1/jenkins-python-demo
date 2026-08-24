FROM jenkins/jenkins:lts

USER root

RUN apt-get update && \
    apt-get install -y python3 python3-pip python3.13-venv curl ca-certificates && \
    curl -fsSL https://download.docker.com/linux/static/stable/x86_64/docker-28.3.3.tgz | \
    tar -xz --strip-components=1 -C /usr/local/bin docker/docker && \
    rm -rf /var/lib/apt/lists/*

USER jenkins
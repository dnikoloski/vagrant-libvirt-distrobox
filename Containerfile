FROM quay.io/toolbx-images/almalinux-toolbox:latest

LABEL org.opencontainers.image.source=https://github.com/dnikolosi/vagrant-libvirt-distrobox \
      summary="A cloud-native approach to using Vagrant Libvirt with toolbox or distrobox" \
      maintainer="nikoloskid@pm.me"

COPY packages /

# Add the HashiCorp Repo & install vagrant, vagrant-libvirt and all dependencies
RUN wget -O- https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo | sudo tee /etc/yum.repos.d/hashicorp.repo && \
      dnf -y install $(<packages) && \
      vagrant plugin install vagrant-libvirt && \
      dnf -y upgrade && \
      dnf clean all

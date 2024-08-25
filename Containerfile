FROM quay.io/toolbx-images/almalinux-toolbox:latest

LABEL org.opencontainers.image.source=https://github.com/dnikolosi/vagrant-libvirt-distrobox \
      summary="A cloud-native approach to using Vagrant Libvirt with toolbox or distrobox" \
      maintainer="nikoloskid@pm.me"

# Add the HashiCorp Repo & install vagrant
RUN wget -O- https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo | sudo tee /etc/yum.repos.d/hashicorp.repo
RUN dnf install -y vagrant

# Install vagrant-libvirt and it dependencies
RUN sudo dnf install -y libvirt libguestfs-tools gcc libvirt-devel libxml2-devel make ruby-devel \
    && sudo dnf install -y byacc cmake gcc-c++ wget zlib-devel \
    && vagrant plugin install vagrant-libvirt

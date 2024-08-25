# vagrant-libvirt-distrobox

## Description

vagrant-libvirt-distrobox is a distrobox and toolbox ready container with vagrant and vagrant-libvirt included.

It's a base image and action for Toolbox and Distrobox.

This image is born out of "cloud native" approach to this.

### How to use

If you use distrobox:
```sh
distrobox create -i ghcr.io/dnikoloski/vagrant-libvirt-distrobox -n vagrant-libvirt
distrobox enter vagrant-libvirt
```
If you use toolbox:
```sh
toolbox create -i ghcr.io/dnikoloski/vagrant-libvirt-distrobox -n vagrant-libvirt
toolbox enter vagrant-libvirt
```
### Make your own

Fork and add programs to this this image if needed.

## Verification

These images are signed with sisgstore's [cosign](https://docs.sigstore.dev/cosign/overview/). You can verify the signature by downloading the `cosign.pub` key from this repo and running the following command:

    cosign verify --key cosign.pub ghcr.io/dnikolosi/vagrant-libvirt-distrobox
    
If you're forking this repo you should [read the docs](https://docs.github.com/en/actions/security-guides/encrypted-secrets) on keeping secrets in github. You need to [generate a new keypair](https://docs.sigstore.dev/cosign/overview/) with cosign. The public key can be in your public repo (your users need it to check the signatures), and you can paste the private key in Settings -> Secrets -> Actions.
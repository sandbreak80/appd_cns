#!/bin/bash

if [[ $(id -u) -ne 0 ]] ; then echo "Please run as root" ; exit 1 ; fi

apt-get update
apt-get upgrade

curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add
echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" > /etc/apt/sources.list.d/kubernetes.list

apt-get update
apt-get install --force-yes kubelet kubeadm kubectl kubernetes-cni docker.io swapspace

modprobe br_netfilter
sysctl net.bridge.bridge-nf-call-iptables=1
swapoff -a && sed -i '/swap/d' /etc/fstab
kubeadm init --pod-network-cidr=10.244.0.0/16

rm -f /etc/apt/apt.conf.d/jp90forceyes

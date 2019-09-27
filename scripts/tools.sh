#!/bin/sh -eux

# This script installs a bunch of tools that are commonly used on Penetration Tests.

# Setup folders

# Install common tools
export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get install -y ftp apache2 python-requests libapache2-mod-php python-pymssql  build-essential dkms xxd bloodhound ftp hostapd xnest nfs-common pkg-config libnl-genl-3-dev python-pexpect python-pefile python-crypto python-openssl libssl1.0-dev libffi-dev python-dev python-pip tcpdump python-virtualenv build-essential cmake libgtk-3-dev libboost-all-dev libx11-dev libatlas-base-dev libboost-python-dev pkg-config

# Common Git repos to grab
mkdir ~/git
cd ~/git
git clone https://github.com/trinitronx/vncpasswd.py.git
git clone https://github.com/synick/Shr3dKit.git
git clone https://github.com/PowerShellMafia/PowerSploit.git
git clone https://github.com/csababarta/ntdsxtract.git
git clone https://github.com/nccgroup/cisco-SNMP-enumeration.git
git clone https://github.com/byt3bl33d3r/CrackMapExec.git
git clone https://github.com/postmodern/spidr.git
git clone https://github.com/Joshua1909/ciscotype7decrypter.git
git clone https://github.com/worawit/MS17-010.git
git clone https://github.com/floyd-fuh/JKS-private-key-cracker-hashcat.git
git clone https://github.com/nidem/kerberoast.git
git clone https://github.com/droope/droopescan.git
git clone https://github.com/OJ/gobuster.git


# Run some things post git clones
## Using synick repo as there are a few errors with Shr3dKit - waiting on pull request (https://github.com/shr3ddersec/Shr3dKit/pull/7/commits/ab5f2d67adf45e2f5b2d52db61e1ea53bf1e7e2d)
pip install -r ./Shr3dKit/requirements.txt
bash ./Shr3dKit/shr3dkit.sh
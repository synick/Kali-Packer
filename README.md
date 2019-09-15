# Kali with Packer

Using Packer to create Kali Linux Vagrant boxes.

## Getting Started

A lot has been borrowed from https://github.com/elreydetoda/packer-kali_linux/ which is a really great implementation of CI for provisioning Kali images on a montly basis. 

### Prerequisites

The following packages will need to be installed:

```
Virtual Box | VMWare Workstation | VMWare Fusion
Vagrant
Packer
```
This can be acheived by running the following on an elevated Windows command line:

```
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
choco install virtualbox packer vagrant -y
```

### Running

Running it is pretty simple, once cloned and prerequisites have been installed, such run the following to create a box file for Vagrant

```
C:\git\packer-kali> packer build --only=virtualbox-iso .\install\kali.json
```

After this completes, it will take a while as it downloads the Kali ISO off their site, then installs it and finally runs some package installers. You can run your new build by the following:

```
C:\git\packer-kali> vagrant up
```

This will then run and boot up your new Kali machine

## Acknowledgments

* https://github.com/elreydetoda/packer-kali_linux/

#!/bin/bash

#sudo swapoff /mnt/swapfile

sudo rm -rf /etc/apt/sources.list.d/* /usr/share/dotnet /usr/local/lib/android /opt/ghc /etc/mysql /etc/php

docker rmi `docker images -q`
echo "Deleting files, please wait ..."

# docker container stop $(docker container ls -a -q)
docker system prune --all --force --volumns
# sudo -E apt-get -qq -y purge azure-cli ghc* zulu* hhvm llvm* firefox google* dotnet* powershell openjdk* mysql* php* docker*
sudo -E apt-get -qq update
sudo -E apt-get -qq install build-essential asciidoc binutils bzip2 gawk gettext git libncurses5-dev libz-dev patch python3 python2.7 unzip zlib1g-dev lib32gcc1 libc6-dev-i386 subversion flex uglifyjs git-core gcc-multilib p7zip p7zip-full msmtp libssl-dev texinfo libglib2.0-dev xmlto qemu-utils upx libelf-dev autoconf automake libtool autopoint device-tree-compiler g++-multilib antlr3 gperf wget curl swig rsync libreadline-dev ccache vim nano python python-pip python3-pip python-ply python3-ply haveged lrzsz scons ecj fastjar mkisofs
sudo -E apt-get -qq install build-essential asciidoc binutils bzip2 gawk gettext git libncurses5-dev libz-dev patch unzip zlib1g-dev lib32gcc1 libc6-dev-i386 subversion flex uglifyjs git-core gcc-multilib p7zip p7zip-full msmtp libssl-dev texinfo libglib2.0-dev xmlto qemu-utils upx libelf-dev autoconf automake libtool autopoint

sudo -E apt-get -qq autoremove --purge
sudo -E apt-get -qq clean
sudo ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
sudo df -h

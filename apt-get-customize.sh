#!/bin/sh
REMOVE="purge"
REMOVE_OPTS="-y"
INSTALL="install"
INSTALL_OPTS="-y"

apt-get update

apt-get $INSTALL $INSTALL_OPTS $(cat ./*.add.lst)

apt-get $REMOVE $REMOVE_OPTS $(cat ./*.remove.lst)

apt-get dist-upgrade

apt-get autoremove
# dpkg -l | grep '^rc' | awk '{print $2}' | xargs dpkg --purge
apt-get autoclean

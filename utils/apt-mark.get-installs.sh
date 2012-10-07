#!/bin/sh 
apt-mark showauto > pkgs_auto.lst
apt-mark showmanual > pkgs_manual.lst

apt-cache show $(cat pkgs_manual.lst) > pkgs_manual.lst.show

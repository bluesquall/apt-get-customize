apt-get-customize.git
=====================

This repository provides a shell script and a collection of lists to 
simplify customizing new installations of Debian-based Linux 
distributions (e.g., Ubuntu, Mint, and of course, Debian) using 
`apt-get`.

Dependencies
------------
* sh

* apt-get

Use
---
When you run `sudo apt-get-customize.sh`, packages listed in `*.add.lst` 
will be installed, and packages listed in `*.remove.lst` will be removed.

You can leave packages listed in `*.remove.lst` even if they are not 
already installed -- apt is smart about that.

The repository includes several example lists. You can combine them or 
remove them as you see fit. You can also rename them to `*.ignore.lst` 
if you don't want to get rid of them, but you don't want the 
`apt-get-customize.sh` script to pay any attention to them.

Example
-------

1.  Edit example lists to choose the packages you want to remove or install.
    
    `$ vim http.add.lst`  

    >    lighttpd-dev  
    >    lighttpd-doc  

2.  Run the script

    `$ sudo apt-get-customize.sh`

Forks
-----
Please fork this project.

If you have a particular collection of lists that you believe is a good 
example, let me know. I may add an examples folder to collect use cases. 
I may also consider handling that as a set of `git` submodules instead.

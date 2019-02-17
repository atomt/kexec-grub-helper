# kexec GRUB helper

kexec helper to load kernels from your systems GRUB configuration. It has a selector, supports grubenv defaults and stuff.

kexec allows for very spiffy reboots, bypassing firmware initialization entirely. It also does other stuff not covered by this helper thingy. kexec is awesome and people should use it more.

## Usage

Load kernel using a menu selection interface

> kexec-load-grub

Load kernel using auto-selection based what is currently configured as the default kernel

> kexec-load-grub --auto

Then boot into the loaded kernel. If using systemd, use systemctl

> systemctl kexec

## Caveats

I have not tested how this interacts with Secure Boot.

The grub.cfg parsing is ugly; partly because this is bash, and partly because grub.cfg is scriptable itself. This makes parsing fragile. Check if the output makes sense before booting.

## Installation

A makefile is provided but it's really just a simple script. Run it directly, stuff it in /usr/local/sbin, whatever. Any major distribution version released after 2012 should work fine. This includes RHEL/Centos/Scientific 7 and later, Ubuntu 12.04 and later.

### Requirements

* kexec-tools
* GRUB2 has to be your bootloader

You probably have the rest on your system already, but for completeness they are listed here:

* a running kernel supporting kexec()
* util-linux (for getopt)
* whiptail
* bash 4.2 or later
* awk
* sed
* coreutils (for head, tail)
* grep
# golang - program that prints hello (gh repo)
## Intro
This manual is dedicated to run vagrant box with program that prints hello. 
Tested on Mac OS X.

## Requirements
- Oracle Virtualbox recent version installed
[VirtualBox installation manual](https://www.virtualbox.org/manual/ch01.html#intro-installing)

- Hashicorp vagrant recent version installed
[Vagrant installation manual](https://learn.hashicorp.com/tutorials/vagrant/getting-started-install)

- git installed
[Git installation manual](https://git-scm.com/download/mac)

## Preparation 
- Clone git repository. 

```bash
git clone https://github.com/antonakv/go-ob-hello.git
```

Expected command output looks like this:

```bash
Cloning into 'go-ob-hello'...
remote: Enumerating objects: 12, done.
remote: Counting objects: 100% (12/12), done.
remote: Compressing objects: 100% (12/12), done.
remote: Total 12 (delta 1), reused 3 (delta 0), pack-reused 0
Receiving objects: 100% (12/12), done.
Resolving deltas: 100% (1/1), done.
```

- Change folder to go-ob-hello

```bash
cd go-ob-hello
```

## Provisioning

- In the same folder you were before run 

```bash
vagrant up
```

Sample result
```bash
$ vagrant up
Bringing machine 'default' up with 'virtualbox' provider...
==> default: Importing base box 'alvaro/bionic64'...
==> default: Matching MAC address for NAT networking...
==> default: Checking if box 'alvaro/bionic64' version '20.01.16' is up to date...
==> default: Setting the name of the VM: go-ob-hello_default_1615815860268_95022
==> default: Clearing any previously set network interfaces...
==> default: Preparing network interfaces based on configuration...
    default: Adapter 1: nat
==> default: Forwarding ports...
    default: 22 (guest) => 2222 (host) (adapter 1)
==> default: Booting VM...
==> default: Waiting for machine to boot. This may take a few minutes...
    default: SSH address: 127.0.0.1:2222
    default: SSH username: vagrant
    default: SSH auth method: private key
    default: 
    default: Vagrant insecure key detected. Vagrant will automatically replace
    default: this with a newly generated keypair for better security.
    default: 
    default: Inserting generated public key within guest...
    default: Removing insecure key from the guest if it's present...
    default: Key inserted! Disconnecting and reconnecting using new SSH key...
==> default: Machine booted and ready!
==> default: Checking for guest additions in VM...
    default: The guest additions on this VM do not match the installed version of
    default: VirtualBox! In most cases this is fine, but in rare cases it can
    default: prevent things such as shared folders from working properly. If you see
    default: shared folder errors, please make sure the guest additions within the
    default: virtual machine match the version of VirtualBox you have installed on
    default: your host and reload your VM.
    default: 
    default: Guest Additions Version: 6.0.4
    default: VirtualBox Version: 6.1
==> default: Mounting shared folders...
    default: /vagrant => /Users/aakulov/Documents/Development/Hashicorp/go-ob-hello
==> default: Running provisioner: shell...
    default: Running: /var/folders/_d/p7jhkm3n29d8q5mr_7k18yb00000gp/T/vagrant-shell20210315-38183-1on8wfl.sh
    default: Get:1 http://mirrors.ubuntu.com/mirrors.txt Mirrorlist [973 B]
    default: Get:3 http://mirrors.xtom.nl/ubuntu bionic-updates InRelease [88.7 kB]
    default: Hit:2 https://mirror.nl.leaseweb.net/ubuntu bionic InRelease
    default: Get:5 http://security.ubuntu.com/ubuntu bionic-security InRelease [88.7 kB]
    default: Get:6 http://mirrors.xtom.nl/ubuntu bionic-updates/main amd64 Packages [1,938 kB]
    default: Get:4 http://nl.archive.ubuntu.com/ubuntu bionic-backports InRelease [74.6 kB]
    default: Get:7 http://mirrors.xtom.nl/ubuntu bionic-updates/main i386 Packages [1,237 kB]
    default: Get:8 http://mirrors.xtom.nl/ubuntu bionic-updates/main Translation-en [397 kB]
    default: Get:9 http://mirrors.xtom.nl/ubuntu bionic-updates/restricted i386 Packages [24.3 kB]
    default: Get:10 http://mirrors.xtom.nl/ubuntu bionic-updates/restricted amd64 Packages [275 kB]
    default: Get:11 http://mirrors.xtom.nl/ubuntu bionic-updates/restricted Translation-en [36.5 kB]
    default: Get:12 http://security.ubuntu.com/ubuntu bionic-security/main amd64 Packages [1,573 kB]
    default: Get:13 http://mirrors.xtom.nl/ubuntu bionic-updates/universe amd64 Packages [1,720 kB]
    default: Get:14 http://nl.archive.ubuntu.com/ubuntu bionic-backports/main i386 Packages [10.0 kB]
    default: Get:15 http://nl.archive.ubuntu.com/ubuntu bionic-backports/main amd64 Packages [10.0 kB]
    default: Get:16 http://nl.archive.ubuntu.com/ubuntu bionic-backports/main Translation-en [4,764 B]
    default: Get:17 http://nl.archive.ubuntu.com/ubuntu bionic-backports/universe amd64 Packages [10.3 kB]
    default: Get:18 http://mirrors.xtom.nl/ubuntu bionic-updates/universe i386 Packages [1,561 kB]
    default: Get:19 http://nl.archive.ubuntu.com/ubuntu bionic-backports/universe i386 Packages [10.3 kB]
    default: Get:20 http://nl.archive.ubuntu.com/ubuntu bionic-backports/universe Translation-en [4,588 B]
    default: Get:21 http://mirrors.xtom.nl/ubuntu bionic-updates/universe Translation-en [364 kB]
    default: Get:22 http://mirrors.xtom.nl/ubuntu bionic-updates/multiverse amd64 Packages [24.9 kB]
    default: Get:23 http://mirrors.xtom.nl/ubuntu bionic-updates/multiverse i386 Packages [11.6 kB]
    default: Get:24 http://mirrors.xtom.nl/ubuntu bionic-updates/multiverse Translation-en [6,464 B]
    default: Get:25 http://security.ubuntu.com/ubuntu bionic-security/main i386 Packages [926 kB]
    default: Get:26 http://security.ubuntu.com/ubuntu bionic-security/main Translation-en [302 kB]
    default: Get:27 http://security.ubuntu.com/ubuntu bionic-security/restricted amd64 Packages [245 kB]
    default: Get:28 http://security.ubuntu.com/ubuntu bionic-security/restricted i386 Packages [17.7 kB]
    default: Get:29 http://security.ubuntu.com/ubuntu bionic-security/restricted Translation-en [31.7 kB]
    default: Get:30 http://security.ubuntu.com/ubuntu bionic-security/universe amd64 Packages [1,113 kB]
    default: Get:31 http://security.ubuntu.com/ubuntu bionic-security/universe i386 Packages [979 kB]
    default: Get:32 http://security.ubuntu.com/ubuntu bionic-security/universe Translation-en [249 kB]
    default: Get:33 http://security.ubuntu.com/ubuntu bionic-security/multiverse amd64 Packages [19.1 kB]
    default: Get:34 http://security.ubuntu.com/ubuntu bionic-security/multiverse i386 Packages [6,480 B]
    default: Get:35 http://security.ubuntu.com/ubuntu bionic-security/multiverse Translation-en [4,412 B]
    default: Fetched 13.4 MB in 5s (2,563 kB/s)
    default: Reading package lists...
    default: Reading package lists...
    default: Building dependency tree...
    default: 
    default: Reading state information...
    default: The following additional packages will be installed:
    default:   liblzo2-2 squashfs-tools
    default: Suggested packages:
    default:   zenity | kdialog
    default: The following NEW packages will be installed:
    default:   liblzo2-2 snapd squashfs-tools
    default: 0 upgraded, 3 newly installed, 0 to remove and 192 not upgraded.
    default: Need to get 21.2 MB of archives.
    default: After this operation, 104 MB of additional disk space will be used.
    default: Get:1 http://mirrors.ubuntu.com/mirrors.txt Mirrorlist [973 B]
    default: Get:2 http://mirrors.xtom.nl/ubuntu bionic/main amd64 liblzo2-2 amd64 2.08-1.2 [48.7 kB]
    default: Get:4 https://nl.mirrors.clouvider.net/ubuntu bionic-updates/main amd64 snapd amd64 2.48.3+18.04 [21.0 MB]
    default: Get:3 http://mirror.hostnet.nl/ubuntu/archive bionic-updates/main amd64 squashfs-tools amd64 1:4.3-6ubuntu0.18.04.1 [110 kB]
    default: dpkg-preconfigure: unable to re-open stdin: No such file or directory
    default: Fetched 21.2 MB in 7s (2,964 kB/s)
    default: Selecting previously unselected package liblzo2-2:amd64.
    default: (Reading database ... 
(Reading database ... 60%abase ... 5%
    default: (Reading database ... 65%
    default: (Reading database ... 70%
    default: (Reading database ... 75%
    default: (Reading database ... 80%
    default: (Reading database ... 85%
    default: (Reading database ... 90%
    default: (Reading database ... 95%
(Reading database ... 103742 files and directories currently installed.)
    default: Preparing to unpack .../liblzo2-2_2.08-1.2_amd64.deb ...
    default: Unpacking liblzo2-2:amd64 (2.08-1.2) ...
    default: Selecting previously unselected package squashfs-tools.
    default: Preparing to unpack .../squashfs-tools_1%3a4.3-6ubuntu0.18.04.1_amd64.deb ...
    default: Unpacking squashfs-tools (1:4.3-6ubuntu0.18.04.1) ...
    default: Selecting previously unselected package snapd.
    default: Preparing to unpack .../snapd_2.48.3+18.04_amd64.deb ...
    default: Unpacking snapd (2.48.3+18.04) ...
    default: Setting up liblzo2-2:amd64 (2.08-1.2) ...
    default: Setting up squashfs-tools (1:4.3-6ubuntu0.18.04.1) ...
    default: Setting up snapd (2.48.3+18.04) ...
    default: Created symlink /etc/systemd/system/multi-user.target.wants/snapd.apparmor.service → /lib/systemd/system/snapd.apparmor.service.
    default: Created symlink /etc/systemd/system/multi-user.target.wants/snapd.autoimport.service → /lib/systemd/system/snapd.autoimport.service.
    default: Created symlink /etc/systemd/system/multi-user.target.wants/snapd.core-fixup.service → /lib/systemd/system/snapd.core-fixup.service.
    default: Created symlink /etc/systemd/system/multi-user.target.wants/snapd.recovery-chooser-trigger.service → /lib/systemd/system/snapd.recovery-chooser-trigger.service.
    default: Created symlink /etc/systemd/system/multi-user.target.wants/snapd.seeded.service → /lib/systemd/system/snapd.seeded.service.
    default: Created symlink /etc/systemd/system/cloud-final.service.wants/snapd.seeded.service → /lib/systemd/system/snapd.seeded.service.
    default: Created symlink /etc/systemd/system/multi-user.target.wants/snapd.service → /lib/systemd/system/snapd.service.
    default: Created symlink /etc/systemd/system/timers.target.wants/snapd.snap-repair.timer → /lib/systemd/system/snapd.snap-repair.timer.
    default: Created symlink /etc/systemd/system/sockets.target.wants/snapd.socket → /lib/systemd/system/snapd.socket.
    default: Created symlink /etc/systemd/system/final.target.wants/snapd.system-shutdown.service → /lib/systemd/system/snapd.system-shutdown.service.
    default: snapd.failure.service is a disabled or a static unit, not starting it.
    default: snapd.snap-repair.service is a disabled or a static unit, not starting it.
    default: Processing triggers for dbus (1.12.2-1ubuntu1.1) ...
    default: Processing triggers for mime-support (3.60ubuntu1) ...
    default: Processing triggers for man-db (2.8.3-2ubuntu0.1) ...
    default: Processing triggers for libc-bin (2.27-3ubuntu1) ...
    default: 2021-03-15T13:45:27Z INFO Waiting for automatic snapd restart...
    default: go 1.15.8 from Michael Hudson-Doyle (mwhudson) installed
    default: export GOROOT=/snap/go/current
    default: export PATH=$PATH:/snap/bin:$GOROOT/bin
    default: export GOPATH=~/go
    default: --2021-03-15 13:49:09--  https://raw.githubusercontent.com/antonakv/go-ob-hello/main/hello.go
    default: Resolving raw.githubusercontent.com (raw.githubusercontent.com)... 
    default: 185.199.108.133, 185.199.109.133, 185.199.110.133, ...
    default: Connecting to raw.githubusercontent.com (raw.githubusercontent.com)|185.199.108.133|:443... 
    default: connected.
    default: HTTP request sent, awaiting response... 
    default: 200 OK
    default: Length: 72 [text/plain]
    default: Saving to: ‘hello.go’
    default: 
    default:      0K         
    default:                  
    default:                              100% 3.34M=0s
    default: 2021-03-15 13:49:10 (3.34 MB/s) - ‘hello.go’ saved [72/72]
    default: hello world
    ```
    $ vagrant up
Bringing machine 'default' up with 'virtualbox' provider...
==> default: Importing base box 'alvaro/bionic64'...
==> default: Matching MAC address for NAT networking...
==> default: Checking if box 'alvaro/bionic64' version '20.01.16' is up to date...
==> default: Setting the name of the VM: go-ob-hello_default_1615815860268_95022
==> default: Clearing any previously set network interfaces...
==> default: Preparing network interfaces based on configuration...
    default: Adapter 1: nat
==> default: Forwarding ports...
    default: 22 (guest) => 2222 (host) (adapter 1)
==> default: Booting VM...
==> default: Waiting for machine to boot. This may take a few minutes...
    default: SSH address: 127.0.0.1:2222
    default: SSH username: vagrant
    default: SSH auth method: private key
    default: 
    default: Vagrant insecure key detected. Vagrant will automatically replace
    default: this with a newly generated keypair for better security.
    default: 
    default: Inserting generated public key within guest...
    default: Removing insecure key from the guest if it's present...
    default: Key inserted! Disconnecting and reconnecting using new SSH key...
==> default: Machine booted and ready!
==> default: Checking for guest additions in VM...
    default: The guest additions on this VM do not match the installed version of
    default: VirtualBox! In most cases this is fine, but in rare cases it can
    default: prevent things such as shared folders from working properly. If you see
    default: shared folder errors, please make sure the guest additions within the
    default: virtual machine match the version of VirtualBox you have installed on
    default: your host and reload your VM.
    default: 
    default: Guest Additions Version: 6.0.4
    default: VirtualBox Version: 6.1
==> default: Mounting shared folders...
    default: /vagrant => /Users/aakulov/Documents/Development/Hashicorp/go-ob-hello
==> default: Running provisioner: shell...
    default: Running: /var/folders/_d/p7jhkm3n29d8q5mr_7k18yb00000gp/T/vagrant-shell20210315-38183-1on8wfl.sh
    default: Get:1 http://mirrors.ubuntu.com/mirrors.txt Mirrorlist [973 B]
    default: Get:3 http://mirrors.xtom.nl/ubuntu bionic-updates InRelease [88.7 kB]
    default: Hit:2 https://mirror.nl.leaseweb.net/ubuntu bionic InRelease
    default: Get:5 http://security.ubuntu.com/ubuntu bionic-security InRelease [88.7 kB]
    default: Get:6 http://mirrors.xtom.nl/ubuntu bionic-updates/main amd64 Packages [1,938 kB]
    default: Get:4 http://nl.archive.ubuntu.com/ubuntu bionic-backports InRelease [74.6 kB]
    default: Get:7 http://mirrors.xtom.nl/ubuntu bionic-updates/main i386 Packages [1,237 kB]
    default: Get:8 http://mirrors.xtom.nl/ubuntu bionic-updates/main Translation-en [397 kB]
    default: Get:9 http://mirrors.xtom.nl/ubuntu bionic-updates/restricted i386 Packages [24.3 kB]
    default: Get:10 http://mirrors.xtom.nl/ubuntu bionic-updates/restricted amd64 Packages [275 kB]
    default: Get:11 http://mirrors.xtom.nl/ubuntu bionic-updates/restricted Translation-en [36.5 kB]
    default: Get:12 http://security.ubuntu.com/ubuntu bionic-security/main amd64 Packages [1,573 kB]
    default: Get:13 http://mirrors.xtom.nl/ubuntu bionic-updates/universe amd64 Packages [1,720 kB]
    default: Get:14 http://nl.archive.ubuntu.com/ubuntu bionic-backports/main i386 Packages [10.0 kB]
    default: Get:15 http://nl.archive.ubuntu.com/ubuntu bionic-backports/main amd64 Packages [10.0 kB]
    default: Get:16 http://nl.archive.ubuntu.com/ubuntu bionic-backports/main Translation-en [4,764 B]
    default: Get:17 http://nl.archive.ubuntu.com/ubuntu bionic-backports/universe amd64 Packages [10.3 kB]
    default: Get:18 http://mirrors.xtom.nl/ubuntu bionic-updates/universe i386 Packages [1,561 kB]
    default: Get:19 http://nl.archive.ubuntu.com/ubuntu bionic-backports/universe i386 Packages [10.3 kB]
    default: Get:20 http://nl.archive.ubuntu.com/ubuntu bionic-backports/universe Translation-en [4,588 B]
    default: Get:21 http://mirrors.xtom.nl/ubuntu bionic-updates/universe Translation-en [364 kB]
    default: Get:22 http://mirrors.xtom.nl/ubuntu bionic-updates/multiverse amd64 Packages [24.9 kB]
    default: Get:23 http://mirrors.xtom.nl/ubuntu bionic-updates/multiverse i386 Packages [11.6 kB]
    default: Get:24 http://mirrors.xtom.nl/ubuntu bionic-updates/multiverse Translation-en [6,464 B]
    default: Get:25 http://security.ubuntu.com/ubuntu bionic-security/main i386 Packages [926 kB]
    default: Get:26 http://security.ubuntu.com/ubuntu bionic-security/main Translation-en [302 kB]
    default: Get:27 http://security.ubuntu.com/ubuntu bionic-security/restricted amd64 Packages [245 kB]
    default: Get:28 http://security.ubuntu.com/ubuntu bionic-security/restricted i386 Packages [17.7 kB]
    default: Get:29 http://security.ubuntu.com/ubuntu bionic-security/restricted Translation-en [31.7 kB]
    default: Get:30 http://security.ubuntu.com/ubuntu bionic-security/universe amd64 Packages [1,113 kB]
    default: Get:31 http://security.ubuntu.com/ubuntu bionic-security/universe i386 Packages [979 kB]
    default: Get:32 http://security.ubuntu.com/ubuntu bionic-security/universe Translation-en [249 kB]
    default: Get:33 http://security.ubuntu.com/ubuntu bionic-security/multiverse amd64 Packages [19.1 kB]
    default: Get:34 http://security.ubuntu.com/ubuntu bionic-security/multiverse i386 Packages [6,480 B]
    default: Get:35 http://security.ubuntu.com/ubuntu bionic-security/multiverse Translation-en [4,412 B]
    default: Fetched 13.4 MB in 5s (2,563 kB/s)
    default: Reading package lists...
    default: Reading package lists...
    default: Building dependency tree...
    default: 
    default: Reading state information...
    default: The following additional packages will be installed:
    default:   liblzo2-2 squashfs-tools
    default: Suggested packages:
    default:   zenity | kdialog
    default: The following NEW packages will be installed:
    default:   liblzo2-2 snapd squashfs-tools
    default: 0 upgraded, 3 newly installed, 0 to remove and 192 not upgraded.
    default: Need to get 21.2 MB of archives.
    default: After this operation, 104 MB of additional disk space will be used.
    default: Get:1 http://mirrors.ubuntu.com/mirrors.txt Mirrorlist [973 B]
    default: Get:2 http://mirrors.xtom.nl/ubuntu bionic/main amd64 liblzo2-2 amd64 2.08-1.2 [48.7 kB]
    default: Get:4 https://nl.mirrors.clouvider.net/ubuntu bionic-updates/main amd64 snapd amd64 2.48.3+18.04 [21.0 MB]
    default: Get:3 http://mirror.hostnet.nl/ubuntu/archive bionic-updates/main amd64 squashfs-tools amd64 1:4.3-6ubuntu0.18.04.1 [110 kB]
    default: dpkg-preconfigure: unable to re-open stdin: No such file or directory
    default: Fetched 21.2 MB in 7s (2,964 kB/s)
    default: Selecting previously unselected package liblzo2-2:amd64.
    default: (Reading database ... 
(Reading database ... 60%abase ... 5%
    default: (Reading database ... 65%
    default: (Reading database ... 70%
    default: (Reading database ... 75%
    default: (Reading database ... 80%
    default: (Reading database ... 85%
    default: (Reading database ... 90%
    default: (Reading database ... 95%
(Reading database ... 103742 files and directories currently installed.)
    default: Preparing to unpack .../liblzo2-2_2.08-1.2_amd64.deb ...
    default: Unpacking liblzo2-2:amd64 (2.08-1.2) ...
    default: Selecting previously unselected package squashfs-tools.
    default: Preparing to unpack .../squashfs-tools_1%3a4.3-6ubuntu0.18.04.1_amd64.deb ...
    default: Unpacking squashfs-tools (1:4.3-6ubuntu0.18.04.1) ...
    default: Selecting previously unselected package snapd.
    default: Preparing to unpack .../snapd_2.48.3+18.04_amd64.deb ...
    default: Unpacking snapd (2.48.3+18.04) ...
    default: Setting up liblzo2-2:amd64 (2.08-1.2) ...
    default: Setting up squashfs-tools (1:4.3-6ubuntu0.18.04.1) ...
    default: Setting up snapd (2.48.3+18.04) ...
    default: Created symlink /etc/systemd/system/multi-user.target.wants/snapd.apparmor.service → /lib/systemd/system/snapd.apparmor.service.
    default: Created symlink /etc/systemd/system/multi-user.target.wants/snapd.autoimport.service → /lib/systemd/system/snapd.autoimport.service.
    default: Created symlink /etc/systemd/system/multi-user.target.wants/snapd.core-fixup.service → /lib/systemd/system/snapd.core-fixup.service.
    default: Created symlink /etc/systemd/system/multi-user.target.wants/snapd.recovery-chooser-trigger.service → /lib/systemd/system/snapd.recovery-chooser-trigger.service.
    default: Created symlink /etc/systemd/system/multi-user.target.wants/snapd.seeded.service → /lib/systemd/system/snapd.seeded.service.
    default: Created symlink /etc/systemd/system/cloud-final.service.wants/snapd.seeded.service → /lib/systemd/system/snapd.seeded.service.
    default: Created symlink /etc/systemd/system/multi-user.target.wants/snapd.service → /lib/systemd/system/snapd.service.
    default: Created symlink /etc/systemd/system/timers.target.wants/snapd.snap-repair.timer → /lib/systemd/system/snapd.snap-repair.timer.
    default: Created symlink /etc/systemd/system/sockets.target.wants/snapd.socket → /lib/systemd/system/snapd.socket.
    default: Created symlink /etc/systemd/system/final.target.wants/snapd.system-shutdown.service → /lib/systemd/system/snapd.system-shutdown.service.
    default: snapd.failure.service is a disabled or a static unit, not starting it.
    default: snapd.snap-repair.service is a disabled or a static unit, not starting it.
    default: Processing triggers for dbus (1.12.2-1ubuntu1.1) ...
    default: Processing triggers for mime-support (3.60ubuntu1) ...
    default: Processing triggers for man-db (2.8.3-2ubuntu0.1) ...
    default: Processing triggers for libc-bin (2.27-3ubuntu1) ...
    default: 2021-03-15T13:45:27Z INFO Waiting for automatic snapd restart...
    default: go 1.15.8 from Michael Hudson-Doyle (mwhudson) installed
    default: export GOROOT=/snap/go/current
    default: export PATH=$PATH:/snap/bin:$GOROOT/bin
    default: export GOPATH=~/go
    default: --2021-03-15 13:49:09--  https://raw.githubusercontent.com/antonakv/go-ob-hello/main/hello.go
    default: Resolving raw.githubusercontent.com (raw.githubusercontent.com)... 
    default: 185.199.108.133, 185.199.109.133, 185.199.110.133, ...
    default: Connecting to raw.githubusercontent.com (raw.githubusercontent.com)|185.199.108.133|:443... 
    default: connected.
    default: HTTP request sent, awaiting response... 
    default: 200 OK
    default: Length: 72 [text/plain]
    default: Saving to: ‘hello.go’
    default: 
    default:      0K         
    default:                  
    default:                              100% 3.34M=0s
    default: 2021-03-15 13:49:10 (3.34 MB/s) - ‘hello.go’ saved [72/72]
    default: hello world
```
$ vagrant up
Bringing machine 'default' up with 'virtualbox' provider...
==> default: Importing base box 'alvaro/bionic64'...
==> default: Matching MAC address for NAT networking...
==> default: Checking if box 'alvaro/bionic64' version '20.01.16' is up to date...
==> default: Setting the name of the VM: go-ob-hello_default_1615815860268_95022
==> default: Clearing any previously set network interfaces...
==> default: Preparing network interfaces based on configuration...
    default: Adapter 1: nat
==> default: Forwarding ports...
    default: 22 (guest) => 2222 (host) (adapter 1)
==> default: Booting VM...
==> default: Waiting for machine to boot. This may take a few minutes...
    default: SSH address: 127.0.0.1:2222
    default: SSH username: vagrant
    default: SSH auth method: private key
    default: 
    default: Vagrant insecure key detected. Vagrant will automatically replace
    default: this with a newly generated keypair for better security.
    default: 
    default: Inserting generated public key within guest...
    default: Removing insecure key from the guest if it's present...
    default: Key inserted! Disconnecting and reconnecting using new SSH key...
==> default: Machine booted and ready!
==> default: Checking for guest additions in VM...
    default: The guest additions on this VM do not match the installed version of
    default: VirtualBox! In most cases this is fine, but in rare cases it can
    default: prevent things such as shared folders from working properly. If you see
    default: shared folder errors, please make sure the guest additions within the
    default: virtual machine match the version of VirtualBox you have installed on
    default: your host and reload your VM.
    default: 
    default: Guest Additions Version: 6.0.4
    default: VirtualBox Version: 6.1
==> default: Mounting shared folders...
    default: /vagrant => /Users/aakulov/Documents/Development/Hashicorp/go-ob-hello
==> default: Running provisioner: shell...
    default: Running: /var/folders/_d/p7jhkm3n29d8q5mr_7k18yb00000gp/T/vagrant-shell20210315-38183-1on8wfl.sh
    default: Get:1 http://mirrors.ubuntu.com/mirrors.txt Mirrorlist [973 B]
    default: Get:3 http://mirrors.xtom.nl/ubuntu bionic-updates InRelease [88.7 kB]
    default: Hit:2 https://mirror.nl.leaseweb.net/ubuntu bionic InRelease
    default: Get:5 http://security.ubuntu.com/ubuntu bionic-security InRelease [88.7 kB]
    default: Get:6 http://mirrors.xtom.nl/ubuntu bionic-updates/main amd64 Packages [1,938 kB]
    default: Get:4 http://nl.archive.ubuntu.com/ubuntu bionic-backports InRelease [74.6 kB]
    default: Get:7 http://mirrors.xtom.nl/ubuntu bionic-updates/main i386 Packages [1,237 kB]
    default: Get:8 http://mirrors.xtom.nl/ubuntu bionic-updates/main Translation-en [397 kB]
    default: Get:9 http://mirrors.xtom.nl/ubuntu bionic-updates/restricted i386 Packages [24.3 kB]
    default: Get:10 http://mirrors.xtom.nl/ubuntu bionic-updates/restricted amd64 Packages [275 kB]
    default: Get:11 http://mirrors.xtom.nl/ubuntu bionic-updates/restricted Translation-en [36.5 kB]
    default: Get:12 http://security.ubuntu.com/ubuntu bionic-security/main amd64 Packages [1,573 kB]
    default: Get:13 http://mirrors.xtom.nl/ubuntu bionic-updates/universe amd64 Packages [1,720 kB]
    default: Get:14 http://nl.archive.ubuntu.com/ubuntu bionic-backports/main i386 Packages [10.0 kB]
    default: Get:15 http://nl.archive.ubuntu.com/ubuntu bionic-backports/main amd64 Packages [10.0 kB]
    default: Get:16 http://nl.archive.ubuntu.com/ubuntu bionic-backports/main Translation-en [4,764 B]
    default: Get:17 http://nl.archive.ubuntu.com/ubuntu bionic-backports/universe amd64 Packages [10.3 kB]
    default: Get:18 http://mirrors.xtom.nl/ubuntu bionic-updates/universe i386 Packages [1,561 kB]
    default: Get:19 http://nl.archive.ubuntu.com/ubuntu bionic-backports/universe i386 Packages [10.3 kB]
    default: Get:20 http://nl.archive.ubuntu.com/ubuntu bionic-backports/universe Translation-en [4,588 B]
    default: Get:21 http://mirrors.xtom.nl/ubuntu bionic-updates/universe Translation-en [364 kB]
    default: Get:22 http://mirrors.xtom.nl/ubuntu bionic-updates/multiverse amd64 Packages [24.9 kB]
    default: Get:23 http://mirrors.xtom.nl/ubuntu bionic-updates/multiverse i386 Packages [11.6 kB]
    default: Get:24 http://mirrors.xtom.nl/ubuntu bionic-updates/multiverse Translation-en [6,464 B]
    default: Get:25 http://security.ubuntu.com/ubuntu bionic-security/main i386 Packages [926 kB]
    default: Get:26 http://security.ubuntu.com/ubuntu bionic-security/main Translation-en [302 kB]
    default: Get:27 http://security.ubuntu.com/ubuntu bionic-security/restricted amd64 Packages [245 kB]
    default: Get:28 http://security.ubuntu.com/ubuntu bionic-security/restricted i386 Packages [17.7 kB]
    default: Get:29 http://security.ubuntu.com/ubuntu bionic-security/restricted Translation-en [31.7 kB]
    default: Get:30 http://security.ubuntu.com/ubuntu bionic-security/universe amd64 Packages [1,113 kB]
    default: Get:31 http://security.ubuntu.com/ubuntu bionic-security/universe i386 Packages [979 kB]
    default: Get:32 http://security.ubuntu.com/ubuntu bionic-security/universe Translation-en [249 kB]
    default: Get:33 http://security.ubuntu.com/ubuntu bionic-security/multiverse amd64 Packages [19.1 kB]
    default: Get:34 http://security.ubuntu.com/ubuntu bionic-security/multiverse i386 Packages [6,480 B]
    default: Get:35 http://security.ubuntu.com/ubuntu bionic-security/multiverse Translation-en [4,412 B]
    default: Fetched 13.4 MB in 5s (2,563 kB/s)
    default: Reading package lists...
    default: Reading package lists...
    default: Building dependency tree...
    default: 
    default: Reading state information...
    default: The following additional packages will be installed:
    default:   liblzo2-2 squashfs-tools
    default: Suggested packages:
    default:   zenity | kdialog
    default: The following NEW packages will be installed:
    default:   liblzo2-2 snapd squashfs-tools
    default: 0 upgraded, 3 newly installed, 0 to remove and 192 not upgraded.
    default: Need to get 21.2 MB of archives.
    default: After this operation, 104 MB of additional disk space will be used.
    default: Get:1 http://mirrors.ubuntu.com/mirrors.txt Mirrorlist [973 B]
    default: Get:2 http://mirrors.xtom.nl/ubuntu bionic/main amd64 liblzo2-2 amd64 2.08-1.2 [48.7 kB]
    default: Get:4 https://nl.mirrors.clouvider.net/ubuntu bionic-updates/main amd64 snapd amd64 2.48.3+18.04 [21.0 MB]
    default: Get:3 http://mirror.hostnet.nl/ubuntu/archive bionic-updates/main amd64 squashfs-tools amd64 1:4.3-6ubuntu0.18.04.1 [110 kB]
    default: dpkg-preconfigure: unable to re-open stdin: No such file or directory
    default: Fetched 21.2 MB in 7s (2,964 kB/s)
    default: Selecting previously unselected package liblzo2-2:amd64.
    default: (Reading database ... 
(Reading database ... 60%abase ... 5%
    default: (Reading database ... 65%
    default: (Reading database ... 70%
    default: (Reading database ... 75%
    default: (Reading database ... 80%
    default: (Reading database ... 85%
    default: (Reading database ... 90%
    default: (Reading database ... 95%
(Reading database ... 103742 files and directories currently installed.)
    default: Preparing to unpack .../liblzo2-2_2.08-1.2_amd64.deb ...
    default: Unpacking liblzo2-2:amd64 (2.08-1.2) ...
    default: Selecting previously unselected package squashfs-tools.
    default: Preparing to unpack .../squashfs-tools_1%3a4.3-6ubuntu0.18.04.1_amd64.deb ...
    default: Unpacking squashfs-tools (1:4.3-6ubuntu0.18.04.1) ...
    default: Selecting previously unselected package snapd.
    default: Preparing to unpack .../snapd_2.48.3+18.04_amd64.deb ...
    default: Unpacking snapd (2.48.3+18.04) ...
    default: Setting up liblzo2-2:amd64 (2.08-1.2) ...
    default: Setting up squashfs-tools (1:4.3-6ubuntu0.18.04.1) ...
    default: Setting up snapd (2.48.3+18.04) ...
    default: Created symlink /etc/systemd/system/multi-user.target.wants/snapd.apparmor.service → /lib/systemd/system/snapd.apparmor.service.
    default: Created symlink /etc/systemd/system/multi-user.target.wants/snapd.autoimport.service → /lib/systemd/system/snapd.autoimport.service.
    default: Created symlink /etc/systemd/system/multi-user.target.wants/snapd.core-fixup.service → /lib/systemd/system/snapd.core-fixup.service.
    default: Created symlink /etc/systemd/system/multi-user.target.wants/snapd.recovery-chooser-trigger.service → /lib/systemd/system/snapd.recovery-chooser-trigger.service.
    default: Created symlink /etc/systemd/system/multi-user.target.wants/snapd.seeded.service → /lib/systemd/system/snapd.seeded.service.
    default: Created symlink /etc/systemd/system/cloud-final.service.wants/snapd.seeded.service → /lib/systemd/system/snapd.seeded.service.
    default: Created symlink /etc/systemd/system/multi-user.target.wants/snapd.service → /lib/systemd/system/snapd.service.
    default: Created symlink /etc/systemd/system/timers.target.wants/snapd.snap-repair.timer → /lib/systemd/system/snapd.snap-repair.timer.
    default: Created symlink /etc/systemd/system/sockets.target.wants/snapd.socket → /lib/systemd/system/snapd.socket.
    default: Created symlink /etc/systemd/system/final.target.wants/snapd.system-shutdown.service → /lib/systemd/system/snapd.system-shutdown.service.
    default: snapd.failure.service is a disabled or a static unit, not starting it.
    default: snapd.snap-repair.service is a disabled or a static unit, not starting it.
    default: Processing triggers for dbus (1.12.2-1ubuntu1.1) ...
    default: Processing triggers for mime-support (3.60ubuntu1) ...
    default: Processing triggers for man-db (2.8.3-2ubuntu0.1) ...
    default: Processing triggers for libc-bin (2.27-3ubuntu1) ...
    default: 2021-03-15T13:45:27Z INFO Waiting for automatic snapd restart...
    default: go 1.15.8 from Michael Hudson-Doyle (mwhudson) installed
    default: export GOROOT=/snap/go/current
    default: export PATH=$PATH:/snap/bin:$GOROOT/bin
    default: export GOPATH=~/go
    default: --2021-03-15 13:49:09--  https://raw.githubusercontent.com/antonakv/go-ob-hello/main/hello.go
    default: Resolving raw.githubusercontent.com (raw.githubusercontent.com)... 
    default: 185.199.108.133, 185.199.109.133, 185.199.110.133, ...
    default: Connecting to raw.githubusercontent.com (raw.githubusercontent.com)|185.199.108.133|:443... 
    default: connected.
    default: HTTP request sent, awaiting response... 
    default: 200 OK
    default: Length: 72 [text/plain]
    default: Saving to: ‘hello.go’
    default: 
    default:      0K         
    default:                  
    default:                              100% 3.34M=0s
    default: 2021-03-15 13:49:10 (3.34 MB/s) - ‘hello.go’ saved [72/72]
    default: hello world
# nfbsearch-jetty #

## Prerequesite

You need to have JDK (Java Development Kit) version 6+ and jetty

For Ubuntu:

```sh
$ sudo apt-get install openjdk-6-jdk jetty
```

## Setup

Clone the projet to the directory of your choice (instructions will use the home directory).

```sh
git clone git@github.com:nfb-onf/nfbsearch-jetty.git
```

Change the value of NO_START in /etc/default/jetty to 0, jetty will not start otherwise.
```
NO_START=0
```

Create a symbolic link from jetty's webapps directory to the project.

```sh
sudo ln -s ~/nfbsearch-jetty /var/lib/jetty/webapps/search
```

Build the project sources.

```sh
cd ~/nfbsearch-jetty
./build.sh
```

Start jetty.

```sh
sudo service jetty start
```

Everytime you make a change to the project source files, you need to run build.sh again and
restart Jetty:

```sh
./build.sh
sudo service jetty restart
```

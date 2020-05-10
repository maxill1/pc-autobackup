# PC AutoBackup for Linux and OS X for Samsung digital cameras #

This project is in active development and is currently a work-in-progress.

If you'd like to donate to the development of PC AutoBackup use the following link:

[![](https://www.paypalobjects.com/en_US/i/btn/btn_donate_LG.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=HRSE2F7539HR8&lc=US&item_name=PC%20AutoBackup%20Development&item_number=pc%2dautobackup&currency_code=USD&bn=PP%2dDonationsBF%3abtn_donate_LG%2egif%3aNonHosted)


---


# Getting Started #

## Requirements ##
  * [Python 2.5+](http://python.org/download/releases/2.7.3/) _Python 3.x not yet tested_
  * [Twisted](http://twistedmatrix.com/trac/wiki/Downloads)

## Configuring your camera ##
> ### If your camera has already been setup with PC AutoBackup for Windows ###
    * Mount your camera's SD card
    * pc_autobackup.py --import_camera_config=/path/to/camera
    * Uninstall PC AutoBackup on Windows **_(failure to do so will prevent this server from working)_**
> ### If you have never setup PC AutoBackup before ###
    * Mount your camera's SD card
    * pc_autobackup.py --create_camera_config=/path/to/camera

## Starting the server ##
  * pc_autobackup.py

> See _pc_autobackup.py --help_ for more options

## **Tested with the following cameras:** ##

  * DV300F
  * NX1000
  * WB150F
  * WB350F
  * ST200F
  * NX2000
  * NX300
  * NX3000
  * Does it work with your camera? Send me a pull request editing this README.

## **Tested on the following OS:** ##

  * Arch 64-bit
  * Ubuntu 12.04 (precise) 32/64-bit
  * Ubuntu 16.04 (xenial) 64-bit
  * Mac OS X 10.8.2 (Mountain Lion)

## **Tested on the following Python versions:** ##

  * Python 2.7.2
  * Python 2.7.3
  * Python 2.7.11
  * Python 2.7.12

---

## docker image ##

docker image is avalable at maxill1/pc-autobackup and with a docker-compose file:

```
version: '2'

services:
  pcautobackup:
    container_name: pc-autobackup
    image: maxill1/pc-autobackup
    network_mode: host
    volumes:
      - /opt/temp/autobackup/config:/config
      - /opt/temp/autobackup/sdcard:/sdcard 
      - /opt/temp/autobackup/backup:/backup
```

run with:

```
docker-compose -f docker-compose.yml up -d
```

create sdcard config:
```
docker run -it pc-autobackup --create_camera_config=/sdcard
```


**_This software is NOT created or supported by Samsung_**

**_Samsung is a registered trademark of Samsung Electronics Co., Ltd._**

#!/bin/bash
sudo hostnamectl set-hostname worker0101
sudo su
usermod -l worker01 -d /home/worker01 -m master

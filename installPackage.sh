#!/bin/bash

dnf upgrade -y

dnf install -y vim

## install latex xetex and gummi
dnf install -y texlive
dnf install -y texlive-latex
dnf install -y texlive-xetex
dnf install -y gummi

## install redshift
dnf install -y redshift*

## install gcc
dnf install -y gcc

## add skype repo and install skype
dnf config-manager --add-repo=http://negativo17.org/repos/fedora-skype.repo
dnf upgrade
dnf install skype

## install shadowsocks-gui for linux

dnf install -y shadowsocks-qt5

## install julialang
dnf copr enable nalimilan/julia
dnf upgrade
dnf install -y julia

## install R
dnf install R

## install gnome tweak tool
dnf install gnome-tweak-tool

## install git and git-gui
dnf install git
dnf install git-gui

## install mp3
dnf install gstreamer1-plugins-ugly
su -c 'dnf install http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm'
dnf upgrade
dnf install gstreamer-plugins-ugly

## install Chinese pinyin input method
dnf install libpinyin
dnf install ibus-libpinyin
dnf install ibus
dnf install ibus-devel

## install Chinese font
dnf install wqy*

## install xetex dependencies
dnf install -y texlive-euenc
dnf install -y texlive-xltxtra
dnf install -y texlive-layaureo
dnf install -y texlive-titlesec

## try install chrome
dnf install google-chrome-stable

## generate SSH key
cd ~
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
cat .ssh/id_rsa.pub

## Setting email in Git
git config --global user.email "your_email@example.com"
git config --global user.email

## install ruby gem
dnf install -y ruby ruby-devel

## change RubyGems Mirror (fuck GFW)
gem sources --remove https://rubygems.org/
gem sources -a https://ruby.taobao.org/
gem sources -l

## install jekyll and jekyll-paginate
gem install jekyll
gem install jekyll-paginate
gem install pygments.rb

## install  all decoders including h.264 decoder and MPEG-4 AAC decoder
dnf install gstreamer-plugins-bad gstreamer-plugins-bad-free-extras gstreamer-plugins-bad-nonfree gstreamer-plugins-ugly gstreamer-ffmpeg
dnf install gstreamer1-libav gstreamer1-plugins-bad-free-extras gstreamer1-plugins-bad-freeworld gstreamer1-plugins-base-tools gstreamer1-plugins-good-extras gstreamer1-plugins-ugly gstreamer1-plugins-bad-free gstreamer1-plugins-good gstreamer1-plugins-base gstreamer1


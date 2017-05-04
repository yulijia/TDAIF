#!/bin/bash

dnf upgrade -y

dnf install -y vim

## install latex xetex and gummi
dnf install -y texlive
dnf install -y texlive-xetex
dnf install -y gummi

## install trash-cli

dnf install -y trash-cli

echo "alias rm='trash-put' " >> ~/.bashrc

## install redshift
dnf install -y redshift*

echo "
[redshift]
allowed=true
system=false
users=
" >> /etc/geoclue/geoclue.conf


## install gcc
dnf install -y gcc

## add skype repo and install skype
dnf config-manager --add-repo=http://negativo17.org/repos/fedora-skype.repo
dnf upgrade
dnf install skype

## install shadowsocks-gui for linux
dnf copr enable librehat/shadowsocks
dnf install -y shadowsocks-qt5

## install dropbox
dnf install nautilus-dropbox -y
cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -

## install julialang
dnf copr enable nalimilan/julia
dnf upgrade
dnf install -y julia

## install R
dnf install -y R

## install gnome tweak tool
dnf install -y gnome-tweak-tool

## install git-gui
dnf install -y git-gui

## install mp3
su -c 'dnf install http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm'
dnf upgrade
dnf install -y gstreamer-plugins-ugly

## install Chinese pinyin input method
#dnf install libpinyin
#dnf install ibus-libpinyin
#dnf install ibus
#dnf install ibus-devel

## install Chinese font
dnf install -y wqy*

## install xetex dependencies
dnf install -y texlive-euenc
dnf install -y texlive-xltxtra
dnf install -y texlive-layaureo
dnf install -y texlive-titlesec

## install texlive style file
dnf install -y texlive-comment

## try install chrome
dnf install -y google-chrome-stable

## generate SSH key
cd ~
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
cat .ssh/id_rsa.pub

## Setting email and username in Git
git config --global user.email "your_email@example.com"
git config --global user.name "yulijia"

curl https://gist.githubusercontent.com/Linell/bd8100c4e04348c7966d/raw/84c0ea6e0f0a1431d406be6b7bb6e136949090cd/.git-commit-template.txt >> ~/.git-commit-template.txt
git config --global commit.template ~/.git-commit-template.txt

curl https://gist.githubusercontent.com/yulijia/fe2522fe138b6ed41ff4/raw/1e90ec272180dba299f5ad861e72dfab876c0c5b/.git-commit-blog.txt >> ~/.git-commit-template.txt
git config --global commit.template ~/.git-commit-template.txt

## install ruby gem
dnf install -y ruby ruby-devel

## change RubyGems Mirror (fuck GFW)
gem sources --remove https://rubygems.org/
gem sources -a https://ruby.taobao.org/
gem sources -l

## install jekyll and jekyll-paginate
gem install jekyll
gem install jekyll-paginate
#gem install pygments.rb
gem install kramdown rouge
gem install rdiscount

## install  all decoders including h.264 decoder and MPEG-4 AAC decoder
dnf install -y gstreamer-plugins-bad gstreamer-plugins-bad-free-extras gstreamer-plugins-bad-nonfree gstreamer-plugins-ugly gstreamer-ffmpeg
dnf install -y gstreamer1-libav gstreamer1-plugins-bad-free-extras gstreamer1-plugins-bad-freeworld gstreamer1-plugins-base-tools gstreamer1-plugins-good-extras gstreamer1-plugins-ugly gstreamer1-plugins-bad-free gstreamer1-plugins-good gstreamer1-plugins-base gstreamer1

## install unrar
dnf install unrar -y

## install python 3.5

dnf copr enable -y mstuchli/Python3.5
dnf install -y python35-python3
python3.5

## inorder to install RCurl you should install libcurl and libcurl-devel first

dnf install libcurl-devel -y

## read and write jpeg in R

dnf install libjpeg-devel -y

## On server, to download pan.baidu.com/xxxx data, you need BaiduExporter
## Doesn't work now
## dnf install aria2 

## V8 Javascript engine
dnf install v8-devel -y

## install openssl developmet tool to support R devtools 
dnf install openssl-devel -y

## install tufte latex 
dnf install texlive-tufte-latex -y
dnf install texlive-units -y
dnf install texlive-ulem -y
dnf install texlive-morefloats -y
#dnf install texlive-ctex -y
dnf install texlive-savesym -y
dnf install texlive-xecjk -y
dnf install texlive-hardwrap -y
dnf install texlive-lipsum -y

## install creative commons icon 
dnf install texlive-ccicons -y

## install texlive package for bookdown 
dnf install texlive-mathspec -y
dnf install texlive-framed -y
dnf install texlive-titling -y

## needed by IJulia 
dnf  install zeromq3* -y

## install atom, it will install a lot of nodejs package
sudo dnf copr enable mosquito/atom
dnf install atom -y

## install ImageMagick for R animation package
dnf install ImageMagick -y

## install aria2 for baidu yun
dnf install aria2 -y

## insatll fancyhdr and moderncv

dnf install texlive-fancyhdr -y
dnf install texlive-moderncv -y

## install biblatex package for poster (https://github.com/ppletscher/beamerthemeposterzurich)
dnf install texlive-biblatex -y

## install sensors to control fan and cpu
dnf install lm_sensors -y

## install golang, start learn it

dnf install golang -y

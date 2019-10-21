#!/bin/bash
source Downloader.sh

#Usinf file downloaded via source and extracting data via sed
title_var=`sed -n 's:.*<title>\(.*\)</title>.*:\1:p' ${PATH1}/index.html`
echo "Downloaded a page with title: $title_var" 

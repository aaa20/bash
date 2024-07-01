#!/bin/bash

# https://www.youtube.com/watch?v=m_fIwnZcYUE

# Scripting APT Updates using Bash Shell Scripts.
# Rather than run an apt update every time you install software, scripting updates with bash may be a great idea. The APT metadata file is /var/cache/apt/pkgcache.bin and this updates each time apt update runs.

# touch -d "7 days ago" /var/cache/apt/pkgcache.bin
# -------------------------------------------------

source /etc/os-release

if [ $ID_LIKE = 'debian' ] ; then
	pkgcache_file='/var/cache/apt/pkgcache.bin'
	current_time=$(date +%s)
	updated_time=$(stat -c%Y $pkgcache_file)
	time_diff=$(( current_time -  updated_time ))
	threshold=86400
	if [ $time_diff -le $threshold ] ; then
		echo "Cache is up to date"
	else
		echo "Needs updating"
		sudo apt update
	fi
fi

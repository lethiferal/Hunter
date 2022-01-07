#!/bin/bash

ver="0.7"

echo "+--------------------------+"
echo "| █░█ █░█ █▄░█ ▀█▀ █▀▀ █▀█ |"
echo "| █▀█ █▄█ █░▀█ ░█░ ██▄ █▀▄ |"
echo "| v$ver       by Lethiferal |"
echo "+--------------------------+"
echo ""

function YouTube() {
  platform="YouTube"
	baseURL="https://www.youtube.com/user"
	statusCode=$(curl -I -s -L "$baseURL/$username" | grep -w "HTTP" | cut -d " " -f2 | tail -n 1)
	if (( statusCode == 200 )); then
  	echo -e "\e[1m------------------------------------------------------------------------------------\e[0m"
	echo -e " [+] Username exists on:        \e[1;32m$platform\e[0m"
   	echo -e " [+] Profile URL:               \e[1;36m$baseURL/$username\e[0m"
	else 
    	echo -e "\e[1m------------------------------------------------------------------------------------\e[0m"
	echo -e " [-] Username does'nt exist on: \e[0;31m$platform\e[0m"
    	echo -e " [-] Profile URL:               \e[1;36m$baseURL/$username\e[0m"
	fi
}


function SoundCloud() {
  	platform="SoundCloud"
	baseURL="https://soundcloud.com"
	statusCode=$(curl -I -s -L "$baseURL/$username" | grep -w "HTTP" | cut -d " " -f2 | tail -n 1)
	if (( statusCode == 200 )); then
  	echo -e "\e[1m------------------------------------------------------------------------------------\e[0m"
	echo -e " [+] Username exists on:        \e[1;32m$platform\e[0m"
    	echo -e " [+] Profile URL:               \e[1;36m$baseURL/$username\e[0m"
	else 
    	echo -e "\e[1m------------------------------------------------------------------------------------\e[0m"
	echo -e " [-] Username does'nt exist on: \e[0;31m$platform\e[0m"
    	echo -e " [-] Profile URL:               \e[1;36m$baseURL/$username\e[0m"
	fi
}

function Discogs() {
  	platform="Discogs"
	baseURL="https://www.discogs.com/artist"
	statusCode=$(curl -I -s -L "$baseURL/$username" | grep -w "HTTP" | cut -d " " -f2 | tail -n 1)
	if (( statusCode == 200 )); then
  	echo -e "\e[1m------------------------------------------------------------------------------------\e[0m"
	echo -e " [+] Username exists on:        \e[1;32m$platform\e[0m"
    	echo -e " [+] Profile URL:               \e[1;36m$baseURL/$username\e[0m"
	else 
   	echo -e "\e[1m------------------------------------------------------------------------------------\e[0m"
	echo -e " [-] Username does'nt exist on: \e[0;31m$platform\e[0m"
   	echo -e " [-] Profile URL:               \e[1;36m$baseURL/$username\e[0m"
	fi
}

function ReverbNation() {
  	platform="Reverb Nation"
	baseURL="https://www.reverbnation.com"
	statusCode=$(curl -I -s -L "$baseURL/$username" | grep -w "HTTP" | cut -d " " -f2 | tail -n 1)
	if (( statusCode == 200 )); then
  	echo -e "\e[1m------------------------------------------------------------------------------------\e[0m"
	echo -e " [+] Username exists on:        \e[1;32m$platform\e[0m"
   	echo -e " [+] Profile URL:               \e[1;36m$baseURL/$username\e[0m"
	else 
   	echo -e "\e[1m------------------------------------------------------------------------------------\e[0m"
	echo -e " [-] Username does'nt exist on: \e[0;31m$platform\e[0m"
    	echo -e " [-] Profile URL:               \e[1;36m$baseURL/$username\e[0m"
	fi
}

function Github() {
	platform="Github"
	baseURL="https://github.com"
	statusCode=$(curl -I -s -L "$baseURL/$username" | grep -w "HTTP" | cut -d " " -f2 | tail -n 1)
	if (( statusCode == 200 )); then
  	echo -e "\e[1m------------------------------------------------------------------------------------\e[0m"
	echo -e " [+] Username exists on:        \e[1;32m$platform\e[0m"
    	echo -e " [+] Profile URL:               \e[1;36m$baseURL/$username\e[0m"
	else 
    	echo -e "\e[1m------------------------------------------------------------------------------------\e[0m"
	echo -e " [-] Username does'nt exist on: \e[0;31m$platform\e[0m"
    	echo -e " [-] Profile URL:               \e[1;36m$baseURL/$username\e[0m"
	fi
}

function hunt() {
  YouTube
  Discogs
  SoundCloud
  ReverbNation
  Github

}

username=$1
if [ -z $1 ]; then
read -p "[?] Enter Username: " username
fi

hunt

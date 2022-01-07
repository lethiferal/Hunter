#!/bin/bash

ver="1.1"

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

function Vimeo() {
  platform="Vimeo"
	baseURL="https://vimeo.com"
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

function BandCamp() {
  	platform="BandCamp"
	domain="bandcamp.com"
	statusCode=$(curl -I -s -L "https://$username.$domain" | grep -w "HTTP" | cut -d " " -f2 | tail -n 1)
	if (( statusCode == 200 )); then
  	echo -e "\e[1m------------------------------------------------------------------------------------\e[0m"
	echo -e " [+] Username exists on:        \e[1;32m$platform\e[0m"
    	echo -e " [+] Profile URL:               \e[1;36mhttps://$username.$domain\e[0m"
	else 
    	echo -e "\e[1m------------------------------------------------------------------------------------\e[0m"
	echo -e " [-] Username does'nt exist on: \e[0;31m$platform\e[0m"
    	echo -e " [-] Profile URL:               \e[1;36m$username.$domain\e[0m"
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

function LastFM() {
  	platform="Last.FM"
	baseURL="https://www.last.fm/user"
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

function Behance() {
	platform="Behance"
	baseURL="https://www.behance.net"
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

function WHI() {
	platform="We Heart It"
	baseURL="http://weheartit.com"
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

function Pinterest() {
	platform="Pinterest"
	baseURL="https://www.pinterest.com"
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

function Flickr() {
	platform="Flickr"
	baseURL="https://www.flickr.com/people"
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

function Tumblr() {
  	platform="Tumblr"
	domain="tumblr.com"
	statusCode=$(curl -I -s -L "https://$username.$domain" | grep -w "HTTP" | cut -d " " -f2 | tail -n 1)
	if (( statusCode == 200 )); then
  	echo -e "\e[1m------------------------------------------------------------------------------------\e[0m"
	echo -e " [+] Username exists on:        \e[1;32m$platform\e[0m"
    	echo -e " [+] Profile URL:               \e[1;36mhttps://$username.$domain\e[0m"
	else 
    	echo -e "\e[1m------------------------------------------------------------------------------------\e[0m"
	echo -e " [-] Username does'nt exist on: \e[0;31m$platform\e[0m"
    	echo -e " [-] Profile URL:               \e[1;36mhttps://$username.$domain\e[0m"
	fi
}

function FHpx() {
	platform="500px"
	baseURL="https://500px.com/p"
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

function TTHQ() {
	platform="23HQ"
	baseURL="http://www.23hq.com"
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

function Etsy() {
	platform="Etsy"
	baseURL="https://www.etsy.com/people"
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

function Dribble() {
	platform="Dribble"
	baseURL="http://dribbble.com"
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

function Twitter() {
	platform="Twitter"
	baseURL="https://twitter.com"
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

function BlogSpot() {
  	platform="BlogSpot"
	domain="blogspot.com"
	statusCode=$(curl -I -s -L "https://$username.$domain" | grep -w "HTTP" | cut -d " " -f2 | tail -n 1)
	if (( statusCode == 200 )); then
  	echo -e "\e[1m------------------------------------------------------------------------------------\e[0m"
	echo -e " [+] Username exists on:        \e[1;32m$platform\e[0m"
    	echo -e " [+] Profile URL:               \e[1;36mhttps://$username.$domain\e[0m"
	else 
    	echo -e "\e[1m------------------------------------------------------------------------------------\e[0m"
	echo -e " [-] Username does'nt exist on: \e[0;31m$platform\e[0m"
    	echo -e " [-] Profile URL:               \e[1;36m$username.$domain\e[0m"
	fi
}

function Steam() {
	platform="Steam"
	baseURL="https://steamcommunity.com/id"
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
  Vimeo
  BandCamp
  SoundCloud
  ReverbNation
  LastFM
  Discogs
  Behance
  WHI
  Pinterest
  Flickr
  Tumblr
  FHpx
  TTHQ
  Etsy
  Github
  Dribble
  Twitter
  BlogSpot
  Steam

}

username=$1
if [ -z $1 ]; then
read -p "[?] Enter Username: " username
fi

hunt

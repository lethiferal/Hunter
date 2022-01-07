#!/bin/bash

echo "+--------------------------+"
echo "| █░█ █░█ █▄░█ ▀█▀ █▀▀ █▀█ |"
echo "| █▀█ █▄█ █░▀█ ░█░ ██▄ █▀▄ |"
echo "| v0.5       by Lethiferal |"
echo "+--------------------------+"

function YouTube() {
	baseUrl="https://www.youtube.com/user"
	statusCode=$(curl -I -s -L "$baseUrl/$username" | grep -w "HTTP" | cut -d " " -f2 | tail -n 1)
	if (( statusCode == 200 )); then
  	echo -e "\e[1m------------------------------------------------------------------------------------\e[0m"
		echo -e " [+] Username exists on:        \e[1;32mYouTube\e[0m"
    echo -e " [+] Profile URL:               \e[1;36mhttps://www.youtube.com/user/$username\e[0m"
	else 
    echo -e "\e[1m------------------------------------------------------------------------------------\e[0m"
		echo -e " [-] Username does'nt exist on: \e[0;31mYouTube\e[0m"
    echo -e " [-] Profile URL:               \e[1;36mhttps://www.youtube.com/user/$username\e[0m"
	fi
}


function SoundCloud() {
	baseUrl="https://soundcloud.com"
	statusCode=$(curl -I -s -L "$baseUrl/$username" | grep -w "HTTP" | cut -d " " -f2 | tail -n 1)
	if (( statusCode == 200 )); then
  	echo -e "\e[1m------------------------------------------------------------------------------------\e[0m"
		echo -e " [+] Username exists on:        \e[1;32mSoundCloud\e[0m"
    echo -e " [+] Profile URL:               \e[1;36mhttps://soundcloud.com/$username\e[0m"
	else 
    echo -e "\e[1m------------------------------------------------------------------------------------\e[0m"
		echo -e " [-] Username does'nt exist on: \e[0;31mSoundCloud\e[0m"
    echo -e " [-] Profile URL:               \e[1;36mhttps://soundcloud.com/$username\e[0m"
	fi
}

function Github() {
	
	baseUrl="https://github.com"
	statusCode=$(curl -I -s -L "$baseUrl/$username" | grep -w "HTTP" | cut -d " " -f2 | tail -n 1)
	if (( statusCode == 200 )); then
  	echo -e "\e[1m------------------------------------------------------------------------------------\e[0m"
		echo -e " [+] Username exists on:        \e[1;32mGithub\e[0m"
    echo -e " [+] Profile URL:               \e[1;36mhttps://github.com/$username\e[0m"
	else 
    echo -e "\e[1m------------------------------------------------------------------------------------\e[0m"
		echo -e " [-] Username does'nt exist on: \e[0;31mGithub\e[0m"
    echo -e " [-] Profile URL:               \e[1;36mhttps://github.com/$username\e[0m"
	fi
}

function Reddit() {
	baseUrl="https://www.reddit.com/user"
	for i in {1..5}; do
		statusCode=$(curl -I -s -L "$baseUrl/$username" \
	   -H 'upgrade-insecure-requests: 1' \
  	   -H 'user-agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36' \
  	   -H 'accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9' \
  	   -H 'accept-language: en-GB,en;q=0.9' \
  	   --compressed | grep -w "HTTP" | cut -d " " -f2 | tail -n 1)

	  if (( statusCode == 200 )); then
  	echo -e "\e[1m------------------------------------------------------------------------------------\e[0m"
		echo -e " [+] Username exists on:        \e[1;32mReddit\e[0m"
    echo -e " [+] Profile URL:               \e[1;36mhttps://www.reddit.com/user/$username\e[0m"
	  	break
	  elif (( statusCode == 404 )); then
    echo -e "\e[1m------------------------------------------------------------------------------------\e[0m"
		echo -e " [-] Username does'nt exist on: \e[0;31mReddit\e[0m"
    echo -e " [-] Profile URL:               \e[1;36mhttps://www.reddit.com/user/$username\e[0m"
	  	break
	  elif (( statusCode == 504 )); then
	  	continue
	  else
    echo -e "\e[1m------------------------------------------------------------------------------------\e[0m"
		echo -e " [-] Username does'nt exist on: \e[0;31mReddit\e[0m"
    echo -e " [-] Profile URL:               \e[1;36mhttps://www.reddit.com/user/$username\e[0m"
	  	break
	  fi
	done
}


function hunt() {
  YouTube
	SoundCloud
  Github
	Reddit

}

username=$1
if [ -z $1 ]; then
	read -p "[?] Enter Username: " username
fi

hunt

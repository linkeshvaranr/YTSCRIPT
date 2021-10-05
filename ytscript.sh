#!/bin/bash

echo -e "Paste the URL:"

read url

av_check(){
echo -e "Enter 1 for only Audio
enter 2 for Audio and video"
read nu
if [[ $nu == 1 ]]
then
	youtube-dl -f 140 $url
elif [[ $nu == 2 ]]
then
	youtube-dl -v $url
else 
	echo -e "Invalid number"
av_check	
fi
}
	
av_check

#Thank you :)

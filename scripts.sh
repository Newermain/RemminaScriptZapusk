#!/bin/bash
# Ozhidaem zagruzku system
sleep 5

#Proverka zapushena li remmina
if ! pgrep -x "remmina" > /dev/null
then
	#Zapusk remmina
	remmina &
fi

exit 0

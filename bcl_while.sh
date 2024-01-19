#! /bin/bash

# exemple de boucle avec WHILE

i=10

clear

while [[ $i -gt 0 ]] ; do
	echo $i
	let i--
	sleep 1
done

echo "Feu !!!"

#! /bin/bash

# exemple de boucle avec UNTIL

i=10

clear

until [[ $i -le 0 ]] ; do
	echo $i
	let i--
	sleep 1
done

echo "Feu !!!"

#! /bin/bash

rd=$((RANDOM%999))
i=10
echo $rd
while [[ $i -gt 0 ]]; do 
	echo -e -n "Saisir un nombre entre 0 et 999 : "
	read rep
	if [[ $rep -gt $rd ]]; then
		echo "trop grand"
	else
		if [[ $rep -lt $rd ]]; then
			echo "Trop petit"
		else
			echo "BRAVO"
			exit 0
		fi
	fi
	let i--
done
echo "La réponse attendue était :$rd"

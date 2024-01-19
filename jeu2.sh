#! /bin/bash

rd=$((RANDOM%999))
i=10
echo $rd
function assess() {
	if [[ $rep -eq $rd ]]; then
		echo ":) BRAVO"
	elif [[ $rep -lt $rd ]]; then
		echo ":( $rep est trop petit" 
	else 
		echo ":( $rep est trop grand"
	fi
}

while [[ $i -gt 0 ]]; do 

	read -p  "Saisir un nombre entre 0 et 999 : " rep
	if [[ $rep = [0-9]* && $rep -lt 999 ]]; then
		let i--
		assess
	fi
done
echo "La réponse attendue était :$rd"

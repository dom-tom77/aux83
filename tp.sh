#! /bin/bash

chiffre1=
chiffre2=

echo "Saisir le premier nombre : "
read chiffre1
echo "Saisir le deuxième nombre : "
read chiffre2

 
if [[ "$chiffre1" -gt "$chiffre2" ]]; then
	echo "$chiffre1 != $chiffre2"
	echo "$chiffre1 > $chiffre2"
else 
	if [[ "$chiffre1" -lt "$chiffre2" ]]; then
		echo "$chiffre1 != $chiffre2"
		echo "$chiffre1 < $chiffre2"
	else
		echo "$chiffre1 = $chiffre2"
	fi
fi

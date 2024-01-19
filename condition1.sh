#! /bin/bash
echo "Alors, heureux de faire du Linux ?"
read rep
if [[ $rep = "o" ]] || [[ $rep = "O" ]]; then
	echo "Bravo"
else
	if [[ $rep = "n" ]] || [[ $rep = "N" ]] ; then
		echo " le chocolat est un anti-dépresseur..."
	else
		echo "Erreur de saisie"
	fi
fi

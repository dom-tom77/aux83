#! /bin/bash
score=0
points_ad=0
points_multi=0
points_div=0
points_sous=0
source fonctions
while :; do
	sol=
	i=10
	clear
	echo -e "1 - faire des additions."
	echo -e "2 - faire des soustractions"
	echo -e "3 - faire des multiplications"
	echo -e "4 - faire des divisions"
	echo -e "q - pour quitter"
	echo -e -n "\nVotre choix (1, 2, 3, 4) : "
	read choix
	
	case $choix in
		1) fct_ad ;;
		2) fct_sous ;;
		3) fct_multi ;;
		4) fct_div ;;
		q) fct_points ;;
		*) 	echo "Erreur de saisie" 
			sleep 3 ;;
	esac  
done	

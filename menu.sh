#! /bin/bash
while :; do
	clear
	echo -e "1 - pour afficher le nom de l'ordinateur"
	echo -e "2 - pour la version de linux"
	echo -e "3 - pour la charge système"

	echo -e -n "\nvotre choix : "
	read choix

	case $choix in 
		1) hostname ; break ;;
		2) uname -a ; break ;;
		3) uptime ;   break ;;
		*) 	echo "Erreur de saisie"
			sleep 3
			;;
	esac  
done

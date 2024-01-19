! /bin/bash
function fct_for () {
	for i in {10..1} ; do
		echo $i
		sleep 1
	done
}
function fct_while () {
	while [[ $i -gt 0 ]] ; do
		echo $i
		let i--
		sleep 1
	done
}
function fct_until () {
	until [[ $i -le 0 ]] ; do
		echo $i
		let i--
		sleep 1
	done
}

i=10
while :; do
	clear
	echo -e "1 - pour un exemple de boucle FOR"
	echo -e "2 - pour un exemple de boucle WHILE"
	echo -e "3 - pour un exemple de boucle UNTIL"

	echo -e -n "\nvotre choix : "
	read choix

	case $choix in 
		1) fct_for ;	break ;;
		2) fct_while; 	break ;;
		3) fct_until ;  break ;;
		*) 	echo "Erreur de saisie"
			sleep 3
			;;
	esac  
done
echo "Feu !!!"

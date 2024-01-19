#! /bin/bash
function fct_ad () {
	while [[ $i -gt 0 ]]; do
		rd1=$((RANDOM%99))
		rd2=$((RANDOM%99))
		let sol=$rd1+$rd2
		echo -n "$rd1+$rd2="
		read rep
		if [[ $rep = $sol ]]; then
			echo "Bravo"
			let points_ad++
		else 
			echo "Perdu, la bonne réponse était : $sol"
		fi 
		let i--
	done
	echo "Votre score est de $points_ad"
	sleep 3
}

function fct_sous() {
	while [[ $i -gt 0 ]]; do
		rd1=$((RANDOM%99))
		rd2=$((RANDOM%99))
			if [[ $rd1 -ge $rd2 ]]; then
				let sol=$rd1-$rd2
				echo -n "$rd1-$rd2="
				read rep
			else
				let sol=$rd2-$rd1
				echo -n "$rd2-$rd1="
				read rep
			fi 
		if [[ $rep = $sol ]]; then
			echo "Bravo"
			let points_sous++
		else 
			echo "Perdu, la bonne réponse était : $sol"
		fi 
		let i--
	done
	echo "Votre score est de $points_sous" 
	sleep 3
} 

function fct_multi () {
	while [[ $i -gt 0 ]]; do
		rd1=$((RANDOM%9))
		rd2=$((RANDOM%9))
		let sol=$rd1*$rd2
		echo -n "$rd1x$rd2="
		read rep
		if [[ $rep = $sol ]]; then
			echo "Bravo"
			let points_multi++
		else 
			echo "Perdu, la bonne réponse était : $sol"
		fi 
		let i--
	done
	echo "Votre score est de $points_multi"
	sleep 3
}

function fct_div () {
	while [[ $i -gt 0 ]]; do
		rd1=$((RANDOM%99))
		rd2=$((RANDOM%99))
		let sol=$rd1*$rd2
		echo -n "$sol/$rd2="
		read rep
		if [[ $rep = $rd1 ]]; then
			echo "Bravo"
			let points_div++
		else 
			echo "Perdu, la bonne réponse était : $rd1"
		fi 
		let i--
	done
	echo "Votre score est de $points_div"
	sleep 3
}

function fct_points () { 
	let score=($points_ad+$points_sous+$points_multi+$points_div)
	echo "Votre score est de $score" 
	exit 0
}


score=0
points_ad=0
points_multi=0
points_div=0
points_sous=0

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

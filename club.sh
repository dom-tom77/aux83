#! /bin/bash
# Déclaration de variables
Annee=$(date +%"Y")
Naissance=
Age=
Nom=
Prenom=

echo -n "Saisir le nom du joueur"
read Nom
echo -n "Saisir le prénom du joueur"
read Prenom

echo -n "Saisir l'année de naissance de $Prenom $Nom : "
read Naissance
let Age=$Annee-$Naissance

if [[ $Age -lt "9" ]]; then
	echo -e "Inscription impossible car trop jeune"
	exit 0
fi

if [[ $Age -gt "20" ]]; then
	echo "Inscription impossible car trop vieux"
	exit 0
fi

case $Age in
	9|10) 		echo "Bienvenue dans la catégorie POUSSIN"
			echo "$Nom;$Prenom;$Naissance;POUSSIN">>${Annee}_Liste_Adh.csv

	11|12)		echo "Bienvenue dans la catégorie BENJAMIN"
			echo "$Nom;$Prenom;$Naissance;BENJAMIN">>${Annee}_Liste_Adh.csv
			;;
	13|14)		echo "Bienvenue dans la catégorie MINIME"
			echo "$Nom;$Prenom;$Naissance;MINIME">>${Annee}_Liste_Adh.csv
			;;
	15|16|17)	echo "Bienvenue dans la catégorie CADET"
			echo "$Nom;$Prenom;$Naissance;CADET">>${Annee}_Liste_Adh.csv
			;;
	18|19|20)	echo "Bienvenue dans la catégorie JUNIOR"
			echo "$Nom;$Prenom;$Naissance;JUNIOR:x">>${Annee}_Liste_Adh.csv
			;;
esac

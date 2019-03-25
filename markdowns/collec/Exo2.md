# Exercice 2 : Exercice complet sur une collection ( avec type article )


* Écrivez une procédure `Afficher_Ville` qui respecte le schéma suivant : 

![Afficher_ville](/ressources/collec/Afficher_Ville.png)

Cette procédure affiche les infos reçues en argument : nom de la ville, code postal, et population 2010.


* Écrivez une procédure `Afficher_Departement` qui reçoit en argument un numéro de département et affiche les infos de toutes les communes du département.

![Afficher_Departement](/ressources/collec/Afficher_Departement.png)

* Écrivez une fonction sans argument `Desert` qui renvoie le numéro de la commune ayant le moins d'habitants en 2010. Pour tester, afficher les infos de cette commune (vous trouverez une commune de Haute-Garonne avec 5 habitants).

* **Exercice suprême** : écrivez une fonction `Fiche_Departement` qui respecte le schéma suivant :

![Fiche_Departement](/ressources/collec/Fiche_Departement.png)

Cette fonction reçoit en argument un numéro de département et renvoie un article de type `T_Fiche` comprenant :

	* Le numéro du département.
	* Le code postal de la ville la plus peuplée du département, 0 si le département est inconnu.
	* La population 2010 du département (la somme des populations des communes du département).
	* La population 1999 du département.
	* La surface du département.
	* Les coordonnées moyennes du département, calculées en pondérant chaque coordonnée de commune par sa surface.
	* Les altitudes les plus basses et les plus hautes de chaque département.

Écrivez une procédure `Tester_Departements` qui, pour tous les départements, affiche les informations recueillies par Fiche_Departement. Vous pourrez vérifier la vraisemblance des résultats sur Wikipédia. 

@[Algo]({"stubs":["mission5b.adb"],"command":"sh start.sh mission5b.adb","project":"collec"})

:::Solution

@[Algo]({"stubs":["correction/mission5b.adb"],"command":"sh start.sh correction/mission5b.adb","project":"collec"})

:::

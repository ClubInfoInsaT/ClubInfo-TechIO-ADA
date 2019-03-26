# Appels de fonctions et procédures

## Exercice 3 : Procédure de test ou comment récupérer le résultat d'une fonction

### Exercice pratique

@[First exercice]({"stubs": ["mission3.adb"], "command": "sh start.sh mission3.adb", "project":"S1_Base_appel"})

* Avant de l'exécuter, réfléchissez à ce qu'il devrait afficher. Ensuite, lancez le et regardez ce qu'il affiche.

* Corriger la procédure de test pour qu'elle affiche la valeur de la fonction `Affine` à laquelle on passe les arguments `VA, VB` et `VX`.

* Si vous avez bien travaillé, votre programme devrait afficher 149.

* Vérifiez que la fonction `Affine` apparaît une fois et une seule dans votre procédure de test.

### Question de compréhension

* Dans le programme initial, avant que vous ne l'ayez modifié, quel était le lien entre la variable `Resultat` de la fonction `Affine` et la variable `Resultat` de la procédure de test.

* Si on renomme la variable `Resultat`  de la procédure de test avec un autre nom, doit on renommer la variable `Resultat` de la fonction ?

* Comment le compilateur fait il pour savoir que `VA` correspond à l'argument `A`, `VB` à l'argument `B` et `VX` à l'argument `X`?

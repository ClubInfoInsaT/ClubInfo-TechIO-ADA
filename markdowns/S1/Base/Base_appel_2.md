# Appels de fonctions et procédures

## Exercice 2 : Appel de fonction

### Exercice pratique

@[First exercice]({"stubs": ["mission2.adb"], "command": "sh start.sh mission2.adb", "project":"S1_Base_appel"})

* Commencez par corriger l'erreur contenue dans ce programme.

* Pour l'instant, la fonction `Calcul` renvoie toujours 0. Complétez le corps du programme pour afficher la valeur renvoyée par la fonction, quelle qu'elle soit. `(Page 30 du manuel pour afficher.)`. Pour tester, vérifiez que votre programme affiche 0. Si vous changez le 0 affecté à la variable `Resultat` dans la fonction Calcul, en le remplaçant par 99, votre programme doit bien afficher 99.

* Maintenant, ajoutez à la fonction `Calcul` un argument nommé `Prix`. La fonction `Calcul` doit renvoyer 0 si l'argument `Prix` est négatif, et 2 * `Prix` si le prix est positif. Voici le schéma de la fonction Calcul avec argument : 

![Fonction calcul](/ressources/S1/Base_appel/calcul.png).

* Dans le corps du programme, afficher la valeur renvoyée par la fonction en passant en argument la valeur de la variable Y.

* Essayez votre programme avec différentes valeurs de Y, par exemple -5 (le programme affiche alors 0) et 10 (le programme affiche alors 20).

* Si tout marche bien, ajoutez maintenant une deuxième fonction `Somme`  qui reçoit deux arguments entiers U et V. 

![Fonction Somme](/ressources/S1/Base_appel/Somme.png).

La fonction Somme renvoie la somme `U1` + `V1`, où `U1` est le résultat de la fonction Calcul lorsque l'argument est `U`, et `V1` est le résultat de la fonction Calcul lorsque l'argument est `V`. Votre fonction `Somme` doit donc invoquer deux fois la fonction Calcul. Voici un schéma algorithmique de la fonction Somme : 

![Algo Somme](/ressources/S1/Base_appel/fsomme.png)

* Dans le corps du programme, afficher la valeur de Somme pour divers couples d'arguments, par exemple -10 et 5 (le programme affiche 10), -4 et -2 (le programme affiche 0), 8 et 2 (le programme affiche 20).
* Enfin, effectuer le test suivant : afficher la valeur de Somme lorsque les arguments sont eux-mêmes des appels à la fonction Calcul, cf schéma ci-dessous. Essayer de prévoir à l'avance ce qui va être affiché.

![Appel calcul](/ressources/S1/Base_appel/appel_calcul.png)

# Appels de fonctions et procédures

## Exercice 2 : Appel de fonction

### Exercice pratique

En ne complétant que les deux zones indiquées dans le programme, faites en sorte qu'il affiche la valeur de la variable X en invoquant la procédure Afficher.
`Voir page 30 du manuel pour afficher, et page 18 pour invoquer une procédure.`

Commencez par corriger l'erreur contenue dans ce programme.

Pour l'instant, la fonction `Calcul` renvoie toujours 0. Complétez le corps du programme pour afficher la valeur renvoyée par la fonction, quelle qu'elle soit. `(Page 30 du manuel pour afficher.)`. Pour tester, vérifiez que votre programme affiche 0. Si vous changez le 0 affecté à la variable `Resultat` dans la fonction Calcul, en le remplaçant par 99, votre programme doit bien afficher 99.

Maintenant, ajoutez à la fonction `Calcul` un argument nommé `Prix`. La fonction `Calcul` doit renvoyer 0 si l'argument `Prix` est négatif, et 2 * `Prix` si le prix est positif. Voici le schéma de la fonction Calcul avec argument : 

![Fonction calcul](/ressources/Base_appel/calcul.png).

@[First exercice]({"stubs": ["mission2.adb"], "command": "sh start.sh mission2.adb", "project":"Base_appel"})


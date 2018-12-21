# Tech.io Ada INSAT
Dépôt du Tech.io du ClubInfo sur l'ADA.


## Projet
Il s'agirait ici d'écrire un Tech.io afin de permettre aux étudiants qui souhaite travailler l'Ada chez eux de le faire sans installer une machine virtuelle. Pour ceux qui veulent travailler hors ligne, nous utiliserons une VM VirtualBox.

## GAda
L'image utilisée par les runners est : [walleza1/insa_ada](https://hub.docker.com/r/walleza1/insa_ada/).
Les Sources (Acteurs) y seront copiés dans le dossier `/Sources`.

## Compilation
On utilise un système Ubuntu 16.04 LTS comme image de base. La compilation est faite par la ligne de commande :
* `gnatmake -aI/Sources file.adb`

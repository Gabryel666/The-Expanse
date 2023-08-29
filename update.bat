@echo off

:: Mettre à jour le sous-dossier src en fonction de C:\Base\test\
::robocopy "C:\Base\test" "C:\Ambre\src" /MIR

:: Demander à l'utilisateur de saisir le message de commit
set /p commit_message=Entrez le message de commit : 

:: Se déplacer dans le dossier de travail
cd C:\Sites\The-Expanse

:: Générer le site statique avec mdbook build
mdbook build

::Ajouter, commiter et pousser les changements vers GitHub
git add -A
git commit -m "%COMMIT_MESSAGE%"
git push origin main

@echo Fin du traitement.
pause
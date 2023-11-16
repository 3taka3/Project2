#!/bin/bash

cd/home/taka/Project2

#verifier présence de fichiers modifiés
if [[ -n $(git status -s) ]]; then
    # Ajouter tous les fichiers modifiés au suivi
    git add .

# Commit des modifications avec horodatage
    git commit -m "Auto commit $(date +'%Y-%m-%d %H:%M:%S')"

fi 
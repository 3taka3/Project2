import os 
##création nouveau dossier 

#definition des variable
path = "/home/taka"
nouveaudossier1 = os.path.join(path, "dossiertest")
nouveaudossier2 = os.path.join(path, "dossiertest2")

#verification si dossier pré-existant
if not os.path.exists(nouveaudossier1):
#action de création 
    os.makedirs(nouveaudossier1)

#deuxieme maniere de verifier si dossier pré-existe et création en même temps
os.makedirs(nouveaudossier2, exist_ok=True)

#affichage du path des dossiers créés
print(nouveaudossier1)
print(nouveaudossier2)

##suppression dossier 
if os.path.exists (nouveaudossier1):
    os.removedirs(nouveaudossier1)
if os.path.exists (nouveaudossier2):
    os.removedirs(nouveaudossier2)

print("All created and deleted")



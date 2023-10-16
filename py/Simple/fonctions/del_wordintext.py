#supprimer du contenu d'un fichier .txt
with open ("le Virtuel","r") as f_in, open ("le Virtuel propre", "x") as f_out:
    for line in f_in :
        f_out.write (line.replace("<*>", ""))
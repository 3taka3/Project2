#! /usr/bin/bash

#couleurs echo 

tput setaf 6

echo "Comment t'appelles-tu?"

tput setaf 5 

    read name 

        tput setaf 6 

        case $name in

        *argot) echo "$name... C'est bien toi que je cherchais. Je vais te demander de répondre à mes questions avec un simple "oui" ou un simple "non". Sais-tu pourquoi tu es ici?";; 
        *atrice) echo "$name... C'est bien toi que je cherchais. Je vais te demander de répondre à mes questions avec un simple "oui" ou un simple "non". Sais-tu pourquoi tu es ici?";; 
        *nne) echo "$name... C'est bien toi que je cherchais. Je vais te demander de répondre à mes questions avec un simple "oui" ou un simple "non". Sais-tu pourquoi tu es ici?";; 
        *) echo "Tu n'es pas la personne appriopriée, $name. Merci de quitter ce lieu. Bye."; exit ;;

    esac 

tput setaf 5 

    read reponse1

        tput setaf 6 

        case $reponse1 in 

        *on) echo "Je vais t'aider à comprendre le sens de la vie. Es-tu prêt à entendre des vérités?";;
        *ui) echo "Je sais bien que tu t'en doutes déjà. Es-tu prêt à entendre des vérités?" ;;
        *) echo "Ici, les rêgles sont indispensables si tu veux poursuivre. Si tu ne réponds pas par oui ou non tu n'es plus le bienvenu. Bye."; exit ;;
    esac 

tput setaf 5

    read reponse2

        tput setaf 6 

        case $reponse2 in

        *on) echo "Comme tu le sens, boloss."; exit ;;
        *ui) echo "Très bien $name! Je n'en attendais pas moins de ta part. Je vais te poser trois questions et tu devras y répondre avec exactitude. Dans le cas contraire, tu seras expulsé de ce lieu de manière immédiate. Si tu reussis à répondre correctement à toutes mes enigmes, je te revelerai une grande vérité sur le monde qui t'entoure.";;
        *) echo "Ici, les rêgles sont indispensables si tu veux poursuivre. Si tu ne réponds pas par oui ou non tu n'es plus le bienvenu. Bye."; exit ;;
    esac 

    tput setaf 7

    echo "Je vais donc te poser la première enigme. Es-tu prêt?" 

tput setaf 5
 
    read reponse3

        tput setaf 6 

        case $reponse3 in

        *on) echo "N'ai pas peur mon enfant... Zéparti.";;
        *ui) echo "C'est parti. Tu peux des à présent répondre en fonction de la question posée, de manière simple, sans confectionner de phrase. Seule la réponse m'interesse.";;
        *) echo "Ici, les rêgles sont indispensables si tu veux poursuivre. Si tu ne réponds pas par oui ou non tu n'es plus le bienvenu. Bye."; exit ;;
    esac

#Enigmes 

    tput setaf 7

    echo "~ Enigme n°1 : Si la girafe est égale à 3, que l'éléphant est égal à 3 aussi, que l'Hippopotame est égale à 5, combien fait le lion?" 

tput setaf 10

    read reponse4

        tput setaf 6

        case $reponse4 in 

        2) echo "Très bien! Quel esprit vif! On continue.";;
        *) echo "Non ce n'est pas la bonne réponse. Tu n'as pas répondu avec exactitude. Tu peux retenter ta chance, si tu le souhaites. Bye." ; exit;;
    esac 

    tput setaf 7

    echo "~ Enigme n°2 : Qu'est-ce qui t'appartient intimement mais que les autres utilisent plus que toi?" 

tput setaf 10

    read reponse5

        tput setaf 6

        case $reponse5 in 
        
        *renom) echo "Bravo !  C'est bien cela. Passons donc à la troisième et dernière enigme." ;; 
        *nom) echo "Pas loin ! Mais ce n'est pas la réponse exacte. Tu peux retenter ta chance, si tu le souhaites. Bye."; exit;;
        *) echo "Pas du tout, ton esprit est farfelu, l'ami. Tu peux retenter ta chance, si tu le souhaites. Bye. " ; exit;; 
    esac 

    tput setaf 7 

    echo "~ Enigme n°3 : Modifie l'addition suivante avec seulement un changement pour que l'équation soit correcte : 5+5+5=550. Renvoi moi l'addition complète et modifiée, si tu réponds correctement je te revelerai la vérité promise."

tput setaf 10

    read reponse6

        tput setaf 11
    
        case $reponse6 in 
        5+545=550) echo  "Génial... Tu as donc réussi à passer toutes les étapes. Veux-tu que je te revèle la vérité tant convoitée?";;
        5x5x5=550) echo "Erreur classique... Tu le sais, le résultat ne fait pas 550 mais 125... Dommage. Tu peux retenter ta chance, si tu le souhaites. Bye."; exit;;
        *) echo "Et non! Maleureusement, tu as échoué. Dommage. Tu peux retenter ta chance, si tu le souhaites. Bye."; exit;;
    esac

tput setaf 5 

    read reponse7

        tput setaf 11

        case $reponse7 in
        *on) echo "Vraiment ? Après tout ces efforts... Quel gâchis. Comme tu le sens, boloss. Bye."; exit;;
        *ui) echo "Es-tu sûr?"
    esac

tput setaf 5

    read reponse8

        tput setaf 11

        case $reponse8 in
        *on) echo "Comme tu le sens, boloss. Bye."; exit;;
        *ui) echo "Vraiment sûr?"
    esac

tput setaf 5

    read reponse9

        tput setaf 8

        case $reponse9 in
        *on) echo "Comme tu le sens, boloss. Bye."; exit;;
        *ui) echo "Es-tu prêt à ingerer la pilule rouge?"
    esac

tput setaf 5

    read reponse10

        tput setaf 12

        case $reponse10 in
        *on) echo "Comme tu le sens, boloss. Bye."; exit;;
        *ui) echo "Bien. Voici la vérité : Je t'aime. J'espère qu'après cette révélation et ces épreuves, tu ressortiras grandis de cette expérience. Je te souhaite tout le bonheur sur ton chemin, qu'il évite les bombes et mène vers de calmes jardins. Love."; exit;;
    esac
        
        
        
       
         


    
        







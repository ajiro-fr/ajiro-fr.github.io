---
title: "Focus d'équipe"
lang: fr
hidden: false
authors:
  - albiez_olivier
  - clavier_thomas
tags:
  - agile
  - gaspillage
  - kanban
  - management
  - team
  - équipe
illustration:
  name: light-focused
  source: https://www.flickr.com/photos/carolinabio/6846795611
description: |
  Retour d'expérience sur l'usage du mob programming pour améliorer l'efficacité d'une équipe de développement.

---


## Réduire l'encours

{: .blockquote}
> Focus est un mot anglais emprunté au latin qui veut dire foyer ou point, c'est le lieu où plusieurs choses se concentrent

La définition de "focus" sur Wikipedia me rappel mes cours d'optique avec les expériences où l'on voit converger tous les rayons lumineux vers un même point avant de se disperser. Calculer ce point de convergence était beaucoup plus compliqué que de le trouver expérimentalement.

Dans le contexte qui nous occupe aujourd'hui, c'est un peu l'inverse, le point de focus d'une équipe, c'est un encours de travail à un, donc très simple à calculer, mais dans la pratique très difficile à atteindre.

Imaginez, vous arrivez dans une équipe et vous demandez à tous les membres :
- Sur quoi vous travaillez, quelles sont vos taches en cours ?
- Avez-vous des taches bloqués ou en attentes ?
- L'ensemble des éléments terminés sont bien en production ?

Un encours à un signifie que tous les membres de l'équipe répondront :

- Nous travaillons sur la même histoire utilisateur.
- Toutes les histoires utilisateurs que nous avons déjà livrées sont en production.
- Aucune tache n'est bloquée ou en attente d'une autre équipe.

Avez-vous rencontré ce genre d'équipe ?

Nous oui, et nous allons vous raconter l'histoire de l'une d'entre elles.


## Une belle histoire.

Il était une fois une équipe de développement, ils étaient six en comptant le chef de projet et livraient en moyenne une histoire utilisateur par semaine. Après notre passage et l'adoption de la règle : une histoire utilisateur à la fois pour toute l'équipe, ils livraient en production quatre à cinq histoires utilisateurs par semaine.

Alors que leur première réaction avait été :

{: .blockquote}
> On ne va jamais réussir à tous travailler sur la même histoire utilisateur, on va perdre plein de temps à s'attendre et à se marcher sur les pieds !

Au bout d'une semaine de travail avec eux, le chef de projet nous disaient :

{: .blockquote}
> En fait, je crois que l'on est pas suffisamment nombreux pour finir cette histoire utilisateur en moins d'une journée.

Alors que c'est, il passé ? Que peut-on observer dans cette équipe ?

### L'espace de travail

Toute l'équipe est colocalisé dans une grande pièce et l'espace de travail est organisé pour permettre à n'importe quel développeur de projeter son écran sur le mur.

Tous les murs sont utilisés que ce soit pour afficher le backlog des histoires utilisateurs à traiter ou pour partager l'ensemble des irritants priorisés avec leurs options de résolutions.

Un paperboard affiche la liste des petites taches à réaliser pour finir l'histoire utilisateur comme :

- Définir avec le client des exemples parlant pour bien comprendre le besoin.
- Faire les tests d'intégrations avec le client.
- Restructurer la classe Lambda pour accueillir la nouvelle option.
- Faire le développement serveur de la fonctionnalité.
- Ajouter l'option dans l'IHM.
- Contacter le partenaire pour avoir une plateforme de tests.
- etc.

### Le mode de fonctionnement

Le premier binôme projette son travail, ils travaillent en TDD sur la tache de développement. Ils s'échangent le clavier très régulièrement.

À la façon des joueurs de curling les autres membres de l'équipe s'occupent de frotter le sol pour aider l'histoire utilisateur à partir en production le plus vite possible.
Par exemple, un binôme peut s'occuper de restructurer du code pour accueillir facilement la nouvelle fonctionnalité, un autre peut s'occuper d'optimiser le temps d'une action régulière comme la compilation ou l'indexation.

En dehors de discuter de design commun et d'identifier les défauts de processus, nous avons observé les bénéfices suivants :

- Une synchronisation quasi-permanente, le daily se recentre alors sur une question : "Allons-nous tenir nos engagements ?".
- Une véritable équipe qui se connaît parfaitement et qui travaille en collaboration tout le temps.
- Un vrai partage du code et des fonctionnalités de l'application entre tous les membres de l'équipe, d'ailleurs tout le monde travail sur la même branche de code.
- Des livraisons sans bug avec une régularité sans précédent.
- Cela force à faire des choix et donc à faire beaucoup plus attention à la valeur business.

### Notre démarche

Quand nous sommes arrivés le premier jour dans cette équipe, nous avons commencé par expliquer que le premier objectif était d'observer le flux de production de valeur de l'équipe. Pour ce faire nous avons proposé d'arrêter tous les développements en cours et de concentrer l'ensemble de l'équipe sur l'histoire utilisateur la plus simple.

Après avoir réorganisé le bureau pour pouvoir projeter l'écran d'un des développeurs sur un mur, nous avons attaqué l'histoire utilisateur en mode "Mob programming" au bout de quelques minutes nous avons stoppé l'équipe :


{: .font-italic}
--- Avez-vous observé quelque chose que l'on pourrait améliorer ?<br>
--- Non<br>
--- Vous trouvez ça normale de mettre plus de 6 minutes à compiler le projet ?<br>
--- Heu ... Oui, c'est toujours comme ça, mais on fait autre chose en attendant.<br>
--- Ha, je vais quand même le noter sur un postit et l'afficher au mur.

Nous avons alors repris le développement quelques minutes avant d'arrêter à nouveau l'équipe :

{: .font-italic}
--- Avez-vous observé quelque chose que l'on pourrait améliorer ?<br>
--- Non mais ce n'est pas pareil, l'indexation prend forcément 2 heures, on ne peut pas faire autrement. Et puis on fait autre chose en attendant.<br>
--- OK, je vais quand même le noter sur un postit et l'afficher au mur.

Au bout d'une demi-journée, l'histoire utilisateur n'était pas en production, elle était d'ailleurs loin d'être terminée, mais le mur était couvert de postit.

C'est l'utilisation des pratiques Lean du Gemba et du Jidoka pour parcourir la chaîne de production de valeur et de l'arrêter à chaque problème qui nous à permis d'identifier une grande partie des gâchis.
Une fois transformés en PDCA, ils ont permis d'améliorer drastiquement la productivité de l'équipe tout en maintenant une équipe beaucoup plus soudée.


# Conclusion

Les bénéfices sont nombreux, mais attention à un point. Comme toute l'équipe est sur une user story, si elle est bloquée, c'est tout le processus de délivrance de valeur qui est bloqué !
D'où l'importance de la question _"Allons-nous tenir nos engagements ?"_.
C'est un peu comme quand on passe un examen scolaire avec plusieurs questions dans le sujet.
Dois-je continuer la question 1 au risque de ne pas finir et rater l'examen ou dois-je passer à une autre question ?


## Référence

[Stop Starting, Start Finishing!], que l'on peut d'ailleurs retrouvé en version française sur le site du [club agile de caen](https://www.club-agile-caen.fr/2016/07/28/traduction-de-stop-starting-start-finishing-lean-kanban-university/)



[Stop Starting, Start Finishing!]: /books/stop_starting_start_finishing-roock_arne.html

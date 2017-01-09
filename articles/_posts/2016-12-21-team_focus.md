---
title: "Team focus"
lang: fr
hidden: true
authors:
  - albiez_olivier
tags:
  - agile
  - gaspillage
  - kanban
  - management
  - team
illustration:
  name: light-focused
  source: https://www.flickr.com/photos/carolinabio/6846795611
---

## Contexte

{: .blockquote}
> Focus est un mot anglais emprunté au latin qui veut dire foyer ou point, c'est le lieu où plusieurs choses se concentrent

La définition de "focus" sur Wikipedia me rappel mes cours d'optique avec les expériences ou l'on voit converger tous les rayons lumineux vers un même point avant de se disperser. Calculer ce point de convergence était beaucoup plus compliqué que de le trouver expérimentalement.

Dans le contexte qui nous occupe aujourd'hui, c'est un peu l'inverse, le point de focus d'une équipe c'est un travail encours à un, théoriquement très simple à calculer, mais dans la pratique très difficile à atteindre.

Imaginez, vous arrivez dans une équipe et vous demandez à chaque membre :

- Sur quoi tu travail ?
- À tu des taches en attentes ? 
- L'ensemble des éléments terminés sont bien en production ?

Un encoure à un signifie que tous les membres de l'équipe répondront :

- Nous travaillons sur la même histoire utilisateur
- Toutes les histoires utilisateurs que nous avons déjà livrés sont en production
- Nous n'avons aucune histoire utilisateur de commencé et bloqué. 

Avez-vous rencontré ce genre d'équipe ? 

Nous oui, et je vais vous raconter l'histoire de l'une d'entre elles.

## Histoire

Il était une fois une équipe de développement, ils étaient six en comptant le chef de projet et livraient en moyenne une histoire utilisateur par semaine. Après notre passage et l'adoption de la règle : une histoire utilisateur à la fois pour toute l'équipe, ils livraient en production quatre à cinq histoire utilisateur par semaine. 

Alors que leur première réaction avait été :

{: .blockquote}
> On ne va jamais réussir à tous travailler sur la même histoire utilisateur, on va perdre plein de temps à s'attendre et à se marcher sur les pieds !

Au bout d'une semaine de travail avec eux, le chef de projet nous disaient :

{: .blockquote}
> En fait, je crois que l'on est pas suffisamment nombreux pour finir cette histoire utilisateur en moins d'une journée.

Alors que c'est il passé ? Que peut on observer dans cette équipe ? 

### L'espace de travail

L'espace de travail est organisé pour permettre à n'importe quel développeur de projeter son écran sur le mur. 
Toute l'équipe est colocalisé dans une grande pièce.
Tout les murs sont utilisés que ce soit pour afficher l'histoire utilisateur en cours et son état d'avancement ou pour partager l'ensemble des irritants priorisés avec leurs options de résolutions.
Un paper board affiche la liste des petites taches à réaliser comme : 

- Faire les tests d'intégrations avec le client
- Restructurer la classe Lambda pour accueillir la nouvelle option
- Faire le développement serveur de la fonctionnalité
- Ajouter l'option dans l'IHM
- Contacter le partenaire pour avoir une plateforme de tests
- etc.

### Le mode de fonctionnement

Le premier binôme projette son travail, ils travaillent en TDD sur la tache de développement. Ils s'échangent le clavier très régulièrement. 

À la façon des joueurs de curling les autres membre de l'équipe s'occupent de frotter le sol pour aider l'histoire utilisateur à partir en production le plus vite possible. 
Par exemple, un binôme peut s'occuper de restructurer du code pour accueillir facilement la nouvelle fonctionnalité, un autre peut s'occuper d'optimiser le temps d'une action régulière comme la compilation ou l'indexation.

## Notre démarche

Quand nous sommes arrivé le premier jour dans cette équipe, nous avons commencé par expliquer que le premier objectif était d'observer le flux de production de valeur de l'équipe. Pour ce faire nous avons proposé d'arrêter tous les développements en cours et de concentrer l'ensemble de l'équipe sur l'histoire utilisateur la plus simple.

Après avoir réorganisé le bureau pour pouvoir projeter l'écran d'un des développeurs sur un mur, nous avons attaqué l'histoire utilisateur en mode "Mob programming" au bout de quelques minutes nous avons stoppé l'équipe : 

- Avez-vous observé quelque chose que l'on pourrait améliorer ? 
- Non ? 
- Vous trouvez ça normale de mettre plus de 6 minutes à compiler le projet ? 
- Heu ... Oui, c'est toujours comme ça, mais on fait autre chose en attendant.
- Ha, je vais quand même le noter sur un postit et l'afficher au mur.

Nous avons alors repris le développement quelques minutes avant d'arrêter à nouveau l'équipe : 

- Avez-vous observé quelque chose que l'on pourrait améliorer ? 
- Non mais c'est pas pareil, l'indexation prend forcément 2 heures, on peut pas faire autrement. Et puis on fait autre chose en attendant.
- Ha, je vais quand même le noter sur un postit et l'afficher au mur.

Au bout d'une demis journée l'histoire utilisateur n'était pas en production, elle était d'ailleurs loin d'être terminé, mais le mur était couvert de postit. 

C'est l'utilisation des pratiques Lean du Gemba et du Jidoka pour parcourir la chaîne de production de valeur et de l'arrêter à chaque problème qui nous à permis d'identifier une grande partie des gachies. 
Une fois transformé en PDCA ils ont permis d'améliorer drastiquement la productivité de l'équipe tout en maintenant une équipe beaucoup plus soudé. 

## Référence

Stop Starting, Start Finishing! (Anglais) Broché – 19 juillet 2012 de Arne Roock (Auteur), Claudia Leschik (Illustrations) 

https://www.club-agile-caen.fr/2016/07/28/traduction-de-stop-starting-start-finishing-lean-kanban-university/


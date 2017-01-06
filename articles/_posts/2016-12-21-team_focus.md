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

{: .blockquote}
> Focus est un mot anglais emprunté au latin qui veut dire foyer ou point, c'est le lieu où plusieurs choses se concentrent

La définition de "focus" sur Wikipedia me rappel mes cours d'optique avec les expériences ou l'on voit converger tous les rayons lumineux vers un même point avant de se disperser. Calculer ce point de convergence était beaucoup plus compliqué que de le trouver expérimentalement.

Dans le contexte qui nous occupe aujourd'hui, nous utiliserons le mot "focus" pour désigner la capacité d'une équipe à réduire son encours à un.

Imaginez, vous arrivez dans une équipe et vous demandez à chaque membre sur quoi il travail, s'il a des choses en attentes et si l'ensemble des éléments qu'il a terminés sont bien en production.
Un encoure à un signifie que tous les membres de l'équipe répondront :

- Nous travaillons sur la même histoire utilisateur
- Toutes les histoires utilisateurs que nous avons déjà livrés sont en production
- Nous n'avons aucune histoire utilisateur de commencé et bloqué. 

Avez-vous rencontré ce genre d'équipe ? 

Nous oui, et je vais vous raconter l'histoire de l'une d'entre elles.

Il était une fois une équipe de développement, ils étaient six en comptant le chef de projet et livraient en moyenne une histoire utilisateur par semaine. Après notre passage et l'adoption de la règle : une histoire utilisateur à la fois pour toute l'équipe, ils livraient en production quatre à cinq histoire utilisateur par semaine. 

Alors que leur première réaction avait été :

> On ne va jamais réussir à tous travailler sur la même histoire utilisateur, on va perdre plein de temps à s'attendre et à se marcher sur les pieds !

Au bout d'une semaine de travail avec eux, le chef de projet nous disaient :

> En fait, je crois que l'on est pas suffisamment nombreux pour finir cette histoire utilisateur en moins d'une journée.

Alors que c'est il passé ? Que peut on observer dans cette équipe ? 

Imaginez un espace de travail dans lequel n'importe quel développeur peut projeter son écran sur le mur. Le premier binôme projette son travail, ils travaillent en TDD et s'échangent le clavier très régulièrement. À la façon des joueurs de curling les autres membre de l'équipe s'occupent de frotter le sol pour aider l'histoire utilisateur à partir en production le plus vite possible. Par exemple, un binôme peut s'occuper de restructurer du code pour accueillir facilement la nouvelle fonctionnalité, un autre peut s'occuper d'optimiser les temps de compilation ou d'indexation



Quand nous sommes arrivé le lundi matin dans cette équipe, nous avons commencé par expliquer que le premier objectif était d'observer le flux de production de valeur de l'équipe. Pour ce faire nous avons proposé d'arrêter tous les développements en cours et de concentrer l'ensemble de l'équipe sur l'histoire utilisateur la plus simple.
La première réaction a été :


Ils ont malgré tout accepté de faire l'expérience.

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

Au bout d'une demis journée l'histoire utilisateur n'était pas en production, elle était d'ailleurs loin d'être terminé, mais le mur était couvert de postit. Nous avons alors 

Gains:

- daily rapide (voir multi daily) et centré sur l'atteinte des objectifs (effet examen)
- force des choix et donc plus d'attention sur la valeur business
- réel team building
- partage de la connaissance
- meilleur qualité du résultat
- facilite souvent le trunk-based
- montre les défaut du processus de production

Risques:

- un developpement bloqué va bloquer toute l'équipe (importance du stop the line) (effet examen)

start finishing, stop starting

---
date: 2017-11-21
title: "Scrum"
lang: fr
draft: true
authors:
  - retiere_samuel
tags:
  - Scrum
categories:
  - craft
illustration:
  name: scrum
  source: https://www.flickr.com/photos/victor_paul/8022836740
description: |
  Un article pour expliquer les bases du framework Scrum. J'y explique ce qui change dans la gestion des exigences pour aller vers une approche produit
---
En préambule, cet article s’adresse à une cible de personnes ne connaissant pas ou peu l’Agile. Je fais un léger focus sur la maitrise d’ouvrage car peu de littérature sur ce sujet. Scrum c’est bien la mêlée en anglais, mais aussi le framework Agile le plus utilisé. A l’arrivée on peut presque dire que quand une personne parle d’Agile, il y a de grandes chance pour que la personne parle de Scrum.

{{< img name="Scrum" legend="Scrum" source="http://jordanjob.me/wp-content/uploads/2016/12/Scrum-Diagram-v2-0-Arrows-1000px.png" >}}

Scrum est un framework Agile prescriptif. Il y a avantage et inconvénient. L’avantage, c’est que c’est un framework très documenté et précis. C’est très utile quand on commence à l’utiliser dans un environnement non stable. Le revers de la médaille, c’est qu’il n’est pas le framework qui s’adapte le plus au contexte. Il est basé sur des rôles, des cérémonies (autre nom donné aux réunions / points d’étape Scrum) et un artifact connu sous le nom de product backlog qui correspond au lien entre problème exposé et solution que l’on met en face.

## Cadence
{{< img name="metronome" legend="metronome" source="https://www.flickr.com/photos/jronaldlee/6066898898/" >}}
Scrum repose sur une cadence commune pour l’ensemble des activités. Cette cadence s’appelle une itération ou un sprint et elle est souvent de 2 ou 3 semaines. 

## Sprint planning
{{< img name="milestone" legend="milestone" source="https://www.flickr.com/photos/64633625@N07/15029428712/" >}} 
Pour rappel, je suis dans une méthode adaptive et donc je n’ai pas défini à l’avance toutes les fonctionnalités que je vais développer et quand je vais le faire. En début d’itération, je vais donc définir un scope de fonctionnalités à réaliser durant l’itération. Il s’agit de la cérémonie appelée Sprint Planning. L’équipe de développement donne sa capacité à faire, la maitrise d’ouvrage choisit les fonctionnalités prioritaires et les explique. Après discussion, le scope est validé avec un engagement à tout finir à la fin du sprint. Les fonctionnalités peuvent être découpées en taches techniques.
 
## Daily meeting
{{< img name="synchro" legend="Dancing outside the Ostrich, Castle Acre." source="https://www.flickr.com/photos/nickpix2008/2707016780/" >}}
L’équipe avance dans le développement et je voudrais vérifier que tout est sous contrôle. NON, le daily meeting ne sert pas à ça. C’est un point de synchronisation de l’équipe pour l’équipe qui sert majoritairement à répondre à deux questions :
-	Est-ce que quelqu’un a besoin d’aide ? Il est nécessaire d’avoir une culture où la demande d’aide n’est pas vue comme une faiblesse. 
-	Est-ce que l’on est dans les temps ? L’idée est de pouvoir dire le plus vite possible si l’équipe est en sous ou sur capacité par rapport au scope initial. Nous sommes dans une vision systémique, comprendre que le focus est sur l’équipe et non pas personne par personne.
  
## Sprint Review autrement appelée Démo
{{< img name="applause" legend="street art" source="https://www.flickr.com/photos/bpprice/23652242738" >}}
Nous sommes toujours dans une méthode adaptive et je veux donc récupérer du feedback sur ce que je fais pour pouvoir réorienter la solution au besoin. Point important, je montre souvent un bout d’une fonctionnalité et pas une expérience utilisateur complète. Cela est due à la contrainte de temps à savoir qu’une demande doit tenir dans une itération. Ce découpage doit être fonctionnel et majoritairement de la responsabilité de la maitrise d’ouvrage. Je vais faire une aparté sur les anti-pattern. Voici une liste non exhaustive : 
-	Je montre une application en interne du département IT. => Le feedback n’est pas pertinent.
-	Je récupère du feedback que je ne prends pas en compte. => Je ne suis plus dans de l’adaptif, mais du prédictif.
Je suis dans de l’adaptatif et donc les feedbacks récupérés peuvent réorienter les développements futurs. Pour limiter le gâchis ou dit autrement pour être efficace, je ne dois pas tout détailler dès le début du « projet ». Les maitrises d’ouvrage vont détailler au fur et à mesure. A aucun moment (contrairement au prédictif) il y a aura une vision globale détaillée. Je sais à grosse maille ce que je vais faire à moyen terme, mais pas de manière détaillée.
 
## Rétrospective
{{< img name="try" legend="Nondies try" source="https://www.flickr.com/photos/whiteafrican/2596560388/" >}}
Je ne vais pas attendre la fin d’un projet pour faire un post mortem. Je vais à la fin de chaque itération discuter de la façon dont je peux améliorer le fonctionnement de l’équipe (au sens large). Il s’agit d’envisager des axes de progrès et des actions d’amélioration à réaliser lors de la prochaine itération. Si les actions ne sont jamais réalisées, la rétrospective ne sert à rien.
  
## Scrum Master
{{< img name="gardien" legend="Ubud temple" source="https://www.flickr.com/photos/cozic/7409998946/" >}} 
Le Scrum Master est le garant du temple à savoir qu’il est là pour faciliter les meetings, suivre la progression, aider à la résolution de conflits… c’est-à-dire animer l’équipe en fonction des règles que l’équipe s’est fixée. Il n’est pas un manager hiérarchique et il n’est pas là pour résoudre les problèmes de tout le monde. En rythme normal, il s’agit d’un rôle à tenir et pas un poste. La responsabilité étant collective, il n’est pas logique que cela soit un poste qui nécessite 100% du temps de la personne.
 
## Product Owner
{{< img name="" legend="" source="https://www.flickr.com/photos/vanf/5336855585/" >}}
Cela correspond globalement à une maitrise d’ouvrage Agile. Il y a beaucoup de littérature sur le sujet et tout le monde a son avis sur ce que le rôle devrait être. Personnellement, je considère que cela devrait être contextuel et que les activités de ce rôle doivent être réalisées par un ou plusieurs personnes :
-	Découpage des besoins métiers avec une orientation valeur au regard du problème (MVP) en mode oignon à savoir très détaillé pour le court terme et de moins en moins quand l’horizon de temps s’allonge.
-	Priorisation des MVP.
-	Découpage des incréments de valeurs en morceaux de solution (User story).
-	Priorisation des US.
-	Si possible, explicitation par l’exemple d’une scénario d’usage. C’est le début du BDD.
-	Discussion régulière avec les développeurs pour qu’ils comprennent ce qu’ils doivent faire.
-	Feedback en d’itération. Validation des US.

## Product Backlog
{{< img name="apple" legend="Ninja fruit" source="https://www.flickr.com/photos/santaolalla/34230920634" >}}
C’est le lien entre besoin et solution. C’est le référentiel des MVPs et US. Pour plus de détail, voir le [product backlog].
 
Et si vous préférez voir plutôt que lire, j’ai réalisé quelques courtes vidéos avec un collègue coach pour expliquer Scrum. C’est [ici].

[product backlog]: articles/2016-11-09-product_backlog/
[ici]: https://www.youtube.com/watch?v=hlvkROPsm0E&list=PLNfwXcwnSIDyJKWKIY8ZCAdpox2AXs5hk

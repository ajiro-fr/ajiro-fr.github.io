---
title: "Product Developement : Des katas de construction"
lang: fr
hidden: true
authors:
  - retiere_samuel
tags:
  - product
  - kata
illustration:
  name: 14853927242_de56848a00_k
  source: https://www.flickr.com/photos/tsevis/14853927242
---

Vous voulez comprendre/apprendre des compétences en développement produit ? Ce post est le quatrième post d’exercices d’une série de 4.

Je les ai découpé en 4 parties Comprendre, Explorer, Décider, Construire qui correspondent peu ou prou au design sprint de google ventures. Je vais utiliser le fil rouge de la vente en ligne de produits frais avec comme exemple Auchan Direct.

Voici un résumé des différentes étapes :

- Comprendre pour créer une compréhension commune du problème auquel on pourrait répondre
- Explorer pour s’ouvrir le champ des possibles
- Décider pour se focaliser sur ce qui semble faire le plus de sens
- Construire parce qu’à l’arrivée il y a un client.

Je suis maintenant à l'étape où j'ai mis en face une solution à un problème. Je peux éventuellement en déveloper plusieurs (de solutions) pour les mettre ensuite en concurrence.

{% include img.html
    name='15709722809_42433e78c4_b'
    source='https://www.flickr.com/photos/axeleng/15709722809'
%}

Episode 1 : découpage en US

Explication
Je souhaite récupérer du feedback au fur et à mesure et aussi piloter un minimum mon développement. Je vais donc découper mes incrément de valeur en petits bouts ayant un sens fonctionnel : J'ai nommé une user story. Quand toutes les user stories d'un MVE sont terminées, je mets en production. Quand une user story est terminée, je récupère du feedback en environnement de non production. Pour des pattern de découpage, voir http://agileforall.com/wp-content/uploads/2012/01/Story-Splitting-Flowchart-Thumbnail.png.

Mode opératoire
Reprendre un MVE des cas itinéraire ratp, auchan direct et novcencia. Si vous n'en avez pas, je vous en donne :
- Ratp : Comment aller d'une station à une autre avec le chemin le plus rapide sans prendre en compte l'horaire
- Auchan direct : Commander de la lessive
- Novencia : Connaitre les offres de poste de Novencia

Sur chaque cas, découper le MVE en user story. La forme canonique des user stories n'est pas nécessaire. On commencera par donner le nom des user stories.

Dans un deuxième temps, on triera les user story par ordre croissant de risque.

But pédagogique
S'entrainer à découper une solution. Pendant la précédente séance, nous avons découpé un besoin.

{% include img.html
    name='2077095993_54c06f30d5_o'
    source='https://www.flickr.com/photos/21396607@N05/2077095993'
%}

Episode 2 : scénario de tests

Explication
Maintenant que l'on a découpé le besoin en MVE puis la solution en US, se pose la question des tests. Si on prend une approche de type BDD, on s'attend à ce que les scénarios de tests soient décrits avant le développement. Normalement, il s'agit d'une conversation entre ba, dev et testeur. On n'est pas supposé écrire des scénarios de tests seuls. Ca tombe bien, on n'est pas en match mais à l'entrainement. Dans l'exercice suivant, on cherche à déterminer les critères de conformité de la solution.

Mode opératoire
Reprendre les MVE de l'épisode 1 avec son découpage en US. Pour chaque MVE, donner un scénario de test sous la forme d'un exemple avec la forme suivante :
Etant donné tel contexte ...(verbe au passé)
Quand ....(évènement avec verbe au présent)
Alors .... (résultat)

Scénario : Ajout simple
Etant donné que je suis dans le rayon Yaourts/A boire
Quand j'ajoute un paquet de DANONINO - Gourdes parfum fraise
Alors 1 DANONINO - Gourdes parfum fraise est ajouté à mon panier

Scénario : Pas logué lors de l'ajout
Etant donné que je suis dans le rayon Yaourts/A boire
Et que je ne me suis pas connecté
Quand j'ajoute un paquet de DANONINO - Gourdes parfum fraise
Alors l'écran de connexion s'ouvre

But pédagogique
S'entrainer à exprimer des scénarios de tests sous la forme canonique Gherkin et que ce soit des exemples (pas une reformulation de la spécification). Les verbes du contexte doivent être au passé et il ne doit y avoir (sauf cas exceptionnel) qu'un seul évènement. Il est très important que le scénario ait un nom qui reflete ce que l'on teste.

{% include img.html
    name='16091673593_3d28e34e05_k'
    source='https://www.flickr.com/photos/bburky_/16091673593/'
%}

Episode 3 : Extreme quotation

Explication
Qu'on soit d'accord dès le début, je ne vais pas passer deux jours enfermés dans une salle à estimer le product backlog. Et bien j'ai la solution à savoir l'extreme quotation ou comment estimer 40 US en une heure: http://blog.octo.com/extreme-quotation-planning-agile-sous-steroides/

Mode opératoire
Prendre la première US et la mettre au centre de la table après l'avoir expliquer.
Expliquer la seconde US, discuter et placer la seconde à gauche, au même endroit ou à droite. On parle en termes d'effort.
Répéter jusqu'à plus de carte.

But pédagogique
Il est possible de donner de la visibilité sur la roadmap avec une estimation faite rapidement. Cela n'est peut être pas super précis, mais pas si faux que ça. De mon expérience personnelle, la précision globale est proche d'une estimation faite par planning poker. L'écart de précision ne vaut pas l'écart de temps passé à estimer.

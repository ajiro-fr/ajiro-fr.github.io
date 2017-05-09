---
date: 2016-11-24
title: "Product Developement : Des katas de construction"
lang: fr
hidden: true
authors:
  - retiere_samuel
tags:
  - product
  - kata
illustration:
  name: 14853927242_de56848a00
  source: https://www.flickr.com/photos/tsevis/14853927242
---
Vous voulez comprendre ou apprendre des compétences en développement produit ? Ce post est le dernier post d’exercices d’une série de 5.

Je les ai découpé en 5 parties [Comprendre], [Explorer], [Décider], [Construire], [Valider] qui correspondent peu ou prou au [design sprint] de google ventures. Je vais utiliser le fil rouge de la vente en ligne de produits frais avec comme exemple Auchan Direct.

Je suis maintenant à l'étape où j'ai mis une solution en face d'un problème. Je peux éventuellement en développer plusieurs (de solutions) pour les mettre ensuite en concurrence.

{{< img name="15709722809_42433e78c4" source="https://www.flickr.com/photos/axeleng/15709722809" >}}

## Episode 1 : découpage en US

### Explication

Dans le précdént post, vous avez appris à découper en incrément de valeur, il ne vous reste plus qu'à construire sans partir dans un effet tunnel. Vous souhaitez donc récupérer du feed-back au fur et à mesure et aussi piloter un minimum mon développement. Vous allez découper les incréments de valeur en petits bouts ayant un sens fonctionnel : j'ai nommé une User Story. Quand toutes les User Stories d'un MVE sont terminées, vous pouvez mettre en production. Quand une User Story est terminée, vous récupèrez du feed-back en environnement de non-production. Pour des patterns de découpage, voir [Story splitting flowchart].

### Mode opératoire

Reprendre un MVE des cas itinéraire RATP, Auchan Direct et Novcencia. Si vous n'en avez pas, je vous en donne :

- RATP : comment aller d'une station à une autre avec le chemin le plus rapide sans prendre en compte l'horaire
- Auchan Direct : commander de la lessive
- Novencia : Connaitre les offres de poste de Novencia

Sur chaque cas, découper le MVE en User Stories. La forme canonique des User Stories n'est pas nécessaire. On commencera par donner le nom des User Stories.

Dans un deuxième temps, on triera les User Stories par ordre croissant de risque.

### But pédagogique

S'entraîner à découper une solution. Pendant la précédente séance, nous avons découpé un besoin.


{{< img name="2077095993_54c06f30d5" source="https://www.flickr.com/photos/21396607@N05/2077095993" >}}

## Episode 2 : scénario de tests

### Explication

Maintenant que l'on a découpé le besoin en MVE puis la solution en US, se pose la question des tests. Si on prend une approche de type BDD, on s'attend à ce que les scénarios de tests soient décrits avant le développement. Normalement, il s'agit d'une conversation entre ba, dev et testeur. On n'est pas supposé écrire des scénarios de tests seuls. Ça tombe bien, on n'est pas en match, mais à l'entraînement. Dans l'exercice suivant, on cherche à déterminer les critères de conformité de la solution.

### Mode opératoire

Reprendre les MVE de l'épisode 1 avec son découpage en US. Pour chaque MVE, donner un scénario de test sous la forme d'un exemple avec la forme suivante :

Étant donné tel contexte ...(verbe au passé)
Quand ....(évènement avec verbe au présent)
Alors .... (résultat)

#### Scénario : Ajout simple
Étant donné que je suis dans le rayon Yaourts/A boire
Quand j'ajoute un paquet de DANONINO - Gourdes parfum fraise
Alors 1 DANONINO - Gourdes parfum fraise est ajouté à mon panier

#### Scénario : Pas logué lors de l'ajout
Étant donné que je suis dans le rayon Yaourts/A boire
Et que je ne me suis pas connecté
Quand j'ajoute un paquet de DANONINO - Gourdes parfum fraise
Alors on me demande de me connecter

### But pédagogique

S'entraîner à exprimer des scénarios de tests sous la forme canonique Gherkin et que ce soit des exemples (pas une reformulation de la spécification). Les verbes du contexte doivent être au passé et il ne doit y avoir (sauf cas exceptionnel) qu'un seul évènement. Il est très important que le scénario ait un nom qui reflète ce que l'on teste.


{{< img name="16091673593_3d28e34e05" source="https://www.flickr.com/photos/bburky_/16091673593/" >}}

## Episode 3 : Extreme quotation

### Explication

Qu'on soit d'accord dès le début, je ne vais pas passer deux jours enfermés dans une salle à estimer le product backlog. Et bien, j'ai la solution, à savoir l'[extreme quotation] ou comment estimer 40 US en une heure.

### Mode opératoire

Prendre la première US et la mettre au centre de la table après l'avoir expliqué.
Expliquer la seconde US, discuter et placer la seconde à gauche, au même endroit ou à droite. On parle en termes d'effort.
Répéter jusqu'à plus de cartes.

### But pédagogique

Il est possible de donner de la visibilité sur la roadmap avec une estimation faite rapidement. Cela n'est peut-être pas super précis, mais pas si faux que ça. De mon expérience personnelle, la précision globale est proche d'une estimation faite par planning poker. L'écart de précision ne vaut pas l'écart de temps passé à estimer.

## Suite

[Dans l'article suivant, nous allons aller voir un être bizarre : le client.](/articles/2016/12/05/katastrophe_5_validate.html)


[design sprint]: https://library.gv.com/the-product-design-sprint-understand-day-1-e164f76e69cf#.6nykd8v0s
[Comprendre]: /articles/2016/11/24/katastrophe_1_share.html
[Explorer]: /articles/2016/11/24/katastrophe_2_diverge.html
[Décider]: /articles/2016/11/24/katastrophe_3_converge.html
[Construire]: /articles/2016/11/24/katastrophe_4_build.html
[Valider]: /articles/2016/12/05/katastrophe_5_validate.html
[Story splitting flowchart]: http://agileforall.com/wp-content/uploads/2012/01/Story-Splitting-Flowchart-Thumbnail.png
[extreme quotation]: http://blog.octo.com/extreme-quotation-planning-agile-sous-steroides/

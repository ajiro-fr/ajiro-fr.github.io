---
aliases: /articles/2016/11/24/katastrophe_3_converge
date: 2016-11-24
title: "Product Developement : Des katas de décision"
lang: fr
hidden: true
authors:
  - retiere_samuel
tags:
  - product
  - kata
illustration:
  name: 5564882153_088fd4e2d6
  source: flic.kr/p/9tKtA2
---
Vous voulez comprendre ou apprendre des compétences en développement produit ? Ce post est le troisième post d’exercices d’une série de 5.

Je les ai découpé en 5 parties [Comprendre], [Explorer], [Décider], [Construire], [Valider] qui correspondent peu ou prou au [design sprint] de google ventures. Je vais utiliser le fil rouge de la vente en ligne de produits frais avec comme exemple Auchan Direct.

C’est quoi cette idée de m... ? Et bien, il est temps de poser cette question interdite dans le précédent post. On va cependant faire cela de manière un peu plus poli et plus rationnelle. Cela va se passer en trois temps :

1. Les idées que tout le monde veut exclure après repos. Elles font l'unanimité contre elles.
2. Ensuite, il y a les options à fermer, car après étude, on se rend compte que les hypothèses sont mauvaises, qu’il manquait un risque,… Ce sont les options non-viables.
3. Il restera ensuite à faire des choix pour savoir sur quelle option on investit. Sur ce point, il y a d’ailleurs deux stratégies à savoir _best shot_ ou _bataille_. _Best shot_ veut dire que l’on fait le choix maintenant de ne garder qu’une solution et avancer à fond dessus côté réalisation et validation. _Bataille_ veut dire que l’on garde quelques options et que l’on choisira entre elles plus tard.


{{< img name="3661154554_ff1bcbfd44" source="flic.kr/p/6zwnGo" >}}

## Episode 1 : [Six Thinking Hats]

### Explication

Il s’agit de donner du feed-back pour fermer des options, mais de manière la plus objective possible. Pour cela, on demande à chacun d’endosser un habit pour critiquer par un axe. Cela permet une critique avec moins de jugement. Il est aussi possible de le faire avec les sept nains. L'atelier s'appelle [Six Thinking Hats].

### Mode opératoire

Ouvrir le site auchandirect.fr et taper dans la recherche levure. Critiquer ensuite la solution en passant tour à tour par les 6 chapeaux.

### But pédagogique

Voir comment le chapeau influe sur la qualité de notre feed-back qui devient moins émotionnel.


{{< img name="8727714185_e48740678f" source="flic.kr/p/cyDPsj" >}}

## Episode 2 : Qu’est ce que je pourrai faire de différent ?

### Explication

Rome ne s’est pas fait en un jour, Auchan Direct non plus. La question que l’on va se poser, c’est si je devais le refaire comment je le ferai ? L'épisode 1 nous a permis de fermer certaines options car jugées non viables. Dans ce kata, nous partons sur du découpage pour identifier la valeur potentielle des options ouvertes.

### Mode opératoire

Ouvrir les sites dans l’ordre et découper en incrément de valeur. Chaque incrément doit pouvoir répondre à la question _« qu’est-ce que l’utilisateur pourra faire de différent ? »_.

1. [Itinéraire ratp](http://www.ratp.fr/itineraires/fr/ratp/recherche-avancee)
2. [Auchan Direct](https://www.auchandirect.fr/)
3. [Novencia](http://www.novencia.com/)

Cet exercice est beaucoup plus dur et j’aide donc par des exemples :

1. Je vais en soirée et j’ai besoin de savoir comment y arriver.
2. J’utilise Auchan Direct pour tout ce que je ne trouve pas au marché. C’est mon usage. Et donc si je ne trouvais que ces produits sur le site, cela me permettrait de faire mes courses sans me déplacer. Pour l’exemple, on pourrait aussi rajouter que je ne prends que de la marque Auchan.
3. Je suis un employé qui cherche de nouvelles opportunités

Pour avancer, je conseille d’identifier des utilisateurs types et de définir leurs usages ([personas]). Ensuite, il faut identifier comment je peux livrer de la valeur au fur et à mesure, cela veut dire quelle est l’expérience utilisateur minimale. Ne pas oublier la partie basse du process à savoir choix du créneau, saisi de l’adresse,… On peut aussi retrouver des incréments sur cette partie avec des options comme ‘Modifier’, ‘Annuler’, ‘Copier’…

Si je ne suis pas capable de répondre à la question _« qu’est-ce que l’utilisateur pourra faire de différent ? »_, c’est que la solution envisagée ne répond pas à un besoin. Je peux alors fermer l’option.

### But pédagogique

On est dans le pur slicing avec identification d’incrément de valeur. C’est une partie cœur du développement produit. Pour la suite, j’appellerai l’incrément de valeur minimum MVE pour ‘Minimum Viable Experience’. C’est la clé pour une livraison de valeur au fil de l’eau.


{{< img name="5094198873_0d01966929" source="flic.kr/p/8La6R4" >}}

## Episode 3 : Success metrics

### Explication

Dans le précédent épisode, j’ai identifié de potentiels changements de comportement utilisateurs (MVE) et donc la valeur potentielle. C'est bien mais pas suffisant avec comme question suivante : comment je pourrai valider le succès de ma réponse au besoin? En sortie, je vais avoir 3 cas :

- Critère de succès identifié : OK
- Critère de succès non identifié : Ce n’est en fait pas un incrément de valeur, mais un incrément logiciel. Je dois fusionner avec celui d’après.
- Critère de succès non identifié : Je n’arrive pas à identifier de critère, car j’ai finalement du mal à identifier la valeur. Je dois sûrement fermer cette option. C'est un cas finalement moins rare qu'il n'y parait.

Un indicateur de succès doit répondre à 3 critères : actionnable, accessible, auditable. Voir [3-metrics]


### Mode opératoire

Prendre les MVE identifiés précédemment et définir pour chacun les conditions de succès.

### But pédagogique

Faire bien la différence entre critères de succès (du besoin) et critère d’acceptance (de la solution). Je ne veux dans les critères de succès que de la validation d‘hypothèses et pas de conformité de la solution. On n’est pas en train de faire de la spécification.


{{< img name="9622763791_3138255f98" source="flic.kr/p/fEkbqx" >}}

## Episode 4 : Decision making

### Explication

Vous avez identifié des incréments de valeur et savez comment identifier si c'est un succès ou non. Certaines options sont maintenant fermées et il vous reste à faire le tri dans les options ouvertes. Vous arrivez donc au moment de faire des choix. Il y a plusieurs façons de prendre des décisions que l’on ne perçoit pas nécessairement. Le but de cet exercice est de percevoir les différences et comment le protocole de décision influence la décision. Pour la suite, nous utiliserons 3 protocoles :

1. Consensus : tout le monde doit voter et la décision n’est prise que si tout le monde est d’accord.
2. Majorité : la décision est prise si une majorité relative de personnes vote pour la proposition.
3. Consentement : une personne propose une solution et les autres répondent avec 3 choix (pour, consentement, veto). La proposition passe s’il n’y a pas de veto et s’il y a une majorité de "pour". L’expression d’un consentement veut dire que la personne donne son accord à ce que la personne pousse sa proposition. Toute personne émettant un veto se doit de proposer une autre option.

### Mode opératoire

Répondre aux questions suivantes en utilisant les 3 protocoles de décision.

- Quel est le meilleur endroit ou passer son noël 2017 ? En famille, un chalet a la montagne, en Guadeloupe au chaud sur la plage
- Comment vous motivez plus son personnel ? Donner des primes, donner du feed-back, donner de l'autonomie, plus de jours de congé
- Quelles boissons devraient être disponibles à la cafeteria ? Café, thé, chocolat
- Est-ce que Nantes est en Bretagne ?
- Dans quelle tenue sommes-nous les plus beaux ? Maillot de bain à la plage, tenue de soirée, décontractée, Adam & Eve
- Plage ou montagne ?
- Quel est le meilleur musée de Paris ? Le Louvre, musée d'Orsay, musée Picasso, Beaubourg
- Quel est le meilleur film de la série Star Wars ?
- Qui doit définir nos objectifs ? Dieu, le chef, l'équipe, moi

### But pédagogique

Prendre du recul sur la prise de décision. Le protocole influe le résultat final.


## Suite

[Dans l'article suivant, nous allons construire, parce qu’à l’arrivée il y a un client.](/articles/2016-11-24-katastrophe_4_build)


[design sprint]: https://library.gv.com/the-product-design-sprint-understand-day-1-e164f76e69cf#.6nykd8v0s
[Comprendre]: /articles/2016-11-24-katastrophe_1_share
[Explorer]: /articles/2016-11-24-katastrophe_2_diverge
[Décider]: /articles/2016-11-24-katastrophe_3_converge
[Construire]: /articles/2016-11-24-katastrophe_4_build
[Valider]: /articles/2016-12-05-katastrophe_5_validate
[Six Thinking Hats]: https://en.wikipedia.org/wiki/Six_Thinking_Hats
[personas]: http://www.weloveusers.com/formation/apprendre/personas.html
[3-metrics]: http://jem9.com/3-metrics/

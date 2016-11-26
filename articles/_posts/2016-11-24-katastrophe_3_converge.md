---
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
  source: https://www.flickr.com/photos/alvarogalve/5564882153
---
Vous voulez comprendre ou apprendre des compétences en développement produit ? Ce post est le premier post d’exercices d’une série de 4.

Je les ai découpé en 4 parties [Comprendre], [Explorer], [Décider], [Construire] qui correspondent peu ou prou au [design sprint] de google ventures. Je vais utiliser le fil rouge de la vente en ligne de produits frais avec comme exemple Auchan Direct.

Voici un résumé des différentes étapes :

- [Comprendre] pour créer une compréhension commune du problème auquel on pourrait répondre
- [Explorer] pour s’ouvrir le champ des possibles
- [Décider] pour se focaliser sur ce qui semble faire le plus de sens
- [Construire] parce qu’à l’arrivée il y a un client.


C’est quoi cette idée de m... ? Et bien il est temps de poser cette question interdite dans le dernier post. On va cependant faire cela de manière un peu plus poli et plus rationnelle. Cela va généralement se passer en trois temps :

1. Les idées qui après repos paraissent à exclure pour tout le monde. Ce sont les idées un peu farfelues que personne ne juge intéressante.
2. Ensuite, il y a les options à fermer car après étude on se rend compte que les hypothèses sont mauvaises, qu’il manquait un risque,… Ce sont les options non viables.
3. Il restera ensuite à faire des choix pour savoir sur quelle option on investit. Sur ce point il y a d’ailleurs deux stratégies à savoir best shot ou bataille. Best shot veut dire que l’on fait le choix maintenant de ne garder qu’une solution et avancer à fond dessus côté réalisation et validation. Bataille veut dire que l’on garde quelques options et que l’on choisira entre elles plus tard.


{% include img.html
    name='3661154554_ff1bcbfd44'
    source='https://www.flickr.com/photos/fdecomite/3661154554'
%}

## Episode 1 : [Six Thinking Hats]

### Explication

Il s’agit de donner du feedback pour fermer des options, mais de manière la plus objective possible. Pour cela, on demande à chacun d’endosser un habit pour critiquer par un axe. Cela permet une critique avec moins de jugement. Il est aussi possible de le faire avec les sept nains. L'atelier s'apelle [Six Thinking Hats]

### Mode opératoire

Ouvrir le site auchandirect.fr et taper dans la recherche levure. Critiquer ensuite la solution en passant tour à tour par les 6 chapeaux.

### But pédagogique

Voir comment le chapeau influe sur la qualité de notre feedback qui devient moins émotionnel.


{% include img.html
    name='8727714185_e48740678f'
    source='https://www.flickr.com/photos/werner_schnell_images/7589431098'
%}

## Episode 2 : Qu’est ce que je pourrai faire de différent ?

### Explication

Rome ne s’est pas fait en un jour, Auchan Direct non plus. La question que l’on va se poser, c’est si je devais le refaire comment je le ferai ?

### Mode opératoire

Ouvrir les sites dans l’ordre et découper en incrément de valeur. Chaque incrément doit pouvoir répondre à la question _« qu’est ce que l’utilisateur pourra faire de différent ? »_.

1. Itinéraire ratp : http://www.ratp.fr/itineraires/fr/ratp/recherche-avancee
2. Auchan Direct : https://www.auchandirect.fr/
3. Novencia : http://www.novencia.com/

Cet exercice est beaucoup plus dur et j’aide donc par des exemples :

1. Je vais en soirée et j’ai besoin de savoir comment y arriver.
2. J’utilise Auchan Direct pour tout ce que je ne trouve pas au marché. C’est mon usage. Et donc si je ne trouvais que ces produits sur le site, cela me permettrait de faire mes courses sans me déplacer. Pour l’exemple on pourrait aussi rajouter que je ne prends que de la marque Auchan.
3. Je suis un employé qui cherche de nouvelles opportunités

Pour avancer, je conseille d’identifier des utilisateurs type et de définir leurs usages ([personas]). Ensuite il faut identifier comment je peux livrer de la valeur au fur et à mesure, cela veut dire quelle est l’expérience utilisateur minimale. Ne pas oublier la partie basse du process à savoir choix du créneau, saisie de l’adresse,… On peut aussi retrouver des incréments sur cette partie avec des options comme ‘Modifier’, ‘Annuler’, ‘Copier’…

Si je ne suis pas capable de répondre à la question _« qu’est ce que l’utilisateur pourra faire de différent ? »_, c’est que la solution envisagée ne répond pas à un besoin. Je peux alors fermer l’option.

### But pédagogique

On est dans le pur slicing avec identification d’incrément de valeur. C’est une partie cœur du développement produit. Pour la suite, j’appellerai l’incrément de valeur minimum MVE pour ‘Minimum Viable Experience’. C’est la clé pour une livraison de valeur au fil de l’eau.


{% include img.html
    name='5094198873_0d01966929'
    source='https://www.flickr.com/photos/ikhlasulamal/5094198873'
%}

## Episode 3 : Success metrics

### Explication

J’ai identifié de potentiels changements de comportement utilisateurs (MVE) et je veux maintenant savoir comment je pourrais valider le succès de ma réponse au besoin. En sortie, je vais avoir 3 cas :

- Critère de succès identifié : OK
- Critère de succès non identifié : Ce n’est en fait pas un incrément de valeur mais un incrément logiciel. Je dois merger avec celui d’après.
- Critère de succès non identifié : Je n’arrive pas à identifier de critère car j’ai finalement du mal à identifer la valeur. Je dois sûrement fermer cette option.

Un indicateur de succès doit répondre à 3 critères : actionnable, accessible, auditable. Voir [3-metrics]

### Mode opératoire

Prendre les MVE identifiés précédemment et définir pour chacun les conditions de succès.

### But pédagogique

Faire bien la différence entre critère de succès (du besoin) et critère d’acceptance (de la solution). Je ne veux dans les critères de succès que de la validation d‘hypothèses et pas de conformité de la solution. On n’est pas en train de faire de la spécification.


{% include img.html
    name='9622763791_3138255f98'
    source='https://www.flickr.com/photos/carluzfoto/9622763791/'
%}

## Episode 4 : Decision making

### Explication

Il y a plusieurs façons de prendre des décision que l’on ne perçoit pas nécessairement. Le but de cet exercice est de percevoir les différences et comment le protocole de décision influence la décision. Pour la suite, nous utiliserons 3 protocoles :

1. Consensus : Tout le monde doit voter et la décision n’est prise que si tout le monde est d’accord.
2. Majorité : La décision est prise si une majorité relative de personnes votent pour la proposition.
3. Consentement : Une personne propose une solution et les autres répondent avec 3 choix (pour, consentement, véto). La proposition passe s’il n’y a pas de véto et s’il y a une majorité de pour. L’expression d’un consentement veut dire que la personne donne son accord à ce que la personne pousse sa proposition. Toute personne émettant un véto se doit de proposer une autre option.

### Mode opératoire

Répondre aux questions suivantes en utilisant les 3 protocoles de décision.

- Quel est le meilleur endroit ou passer son noel 2017 ? En famille, un chalet a la montagne, en guadeloupe au chaud sur la plage
- Comment vous motivez plus son personnel ? Donner des primes, donner du feedback, donner de l'autonomie, plus de jours de congés
- Quelles boissons devraient être disponibles à la cafétaria ? Café, thé, chocolat
- Est ce que Nantes est en Bretagne ?
- Dans quelle tenue sommes nous les plus beaux ? Maillot de bain à la plage, tenue de soirée, décontractée, Adam & Eve
- Plage ou montagne ?
- Quel est le meilleur musée de Paris ? Le louvre, musee d'orsay, musée picasso, Beaubourg
- Quel est le meilleur film de la serie star wars ?
- Qui doit définir nos objectifs ? Dieu, le chef, l'équipe, moi

### But pédagogique

Prendre du recul sur la prise de décision. Le protocole influe le résultat final.


[design sprint]: https://library.gv.com/the-product-design-sprint-understand-day-1-e164f76e69cf#.6nykd8v0s
[Comprendre]: /articles/2016/11/24/katastrophe_1_share.html
[Explorer]: /articles/2016/11/24/katastrophe_2_diverge.html
[Décider]: /articles/2016/11/24/katastrophe_3_converge.html
[Construire]: /articles/2016/11/24/katastrophe_4_build.html
[Six Thinking Hats]: https://en.wikipedia.org/wiki/Six_Thinking_Hats
[personas]: http://www.weloveusers.com/formation/apprendre/personas.html
[3-metrics]: http://jem9.com/3-metrics/

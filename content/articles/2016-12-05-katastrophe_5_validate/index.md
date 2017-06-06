---
aliases: /articles/2016/12/05/katastrophe_5_validate.html
date: 2016-12-05
title: "Product Developement : Des katas de validation"
lang: fr
hidden: true
authors:
  - retiere_samuel
tags:
  - product
  - kata
illustration:
  name: 3830209910_f1568d6bc1
  source: http://flic.kr/p/6QsPXU
---
Vous voulez comprendre ou apprendre des compétences en développement produit ? Ce post est le dernier post d’exercices d’une série de 5.

Je les ai découpé en 5 parties [Comprendre], [Explorer], [Décider], [Construire], [Valider] qui correspondent peu ou prou au [design sprint] de google ventures. Je vais utiliser le fil rouge de la vente en ligne de produits frais avec comme exemple Auchan Direct.

Nous sommes maintenant en capacité de montrer quelque chose pour obtenir du feedback et donc in fine être en capacité de valider nos hyptohèses. J'utilise l'expression quelque chose car le quelque chose en question est variable en fonction de l'étape. Dans le design sprint c'est clair, on parle d'un prototype. Dans le product development, on parlera tantot d'une validation pré production tantot d'une validation post production.


{{< img name="4915499077_f6a36de2aa" source="http://flic.kr/p/8undC6" >}}

## Episode 1 : Démo / Story telling

### Explication

Comme d'habitude l'image d'illustration est importante, mais encore plus sur ce cas. La maison n'est pas finie et c'est normal. Je suis en train de recueillir du feedback de mon client (au sens large) pour qu'il me confirme que ce que j'ai réalisé correspond bien à ce qu'il a en tête. A ce stade, on peut difficilement parler d'expérience utilisateur. Comme nous sommes sur un bout de process, il est important d'aider le client à se projeter d'ou l'utilisation du [story telling].

### Mode opératoire

Dans ce kata, je pars du principe que nous sommes dans le cadre d'une démo type Scrum et donc sur un bout de process. Prendre les user stories des cas Auchan Direct, ratp et novencia et raconter la démo. Vous pouvez utiliser les vrais sites pour la faire. On prendra la première d'Auchan Direct, la deuxième de la ratp et la troisième de Novencia. Il est bien de prendre une personne pour vous donner du feedback.

### But pédagogique

Un des but de la démo est de valider les user stories. Il est donc important de repréciser ce qui était prévu en termes de comportement de l'application et de critère d'acceptance. Ensuite, il s'agit de récupérer du feedback et pour cela il est nécessaire que le client se projète. C'est pour cela que je prend la troisième pour Novencia, il sera alors nécessaire de redonner les conditions de sortie de l'étape précédente et de repositionner la user story dans son cadre.


{{< img name="7723572802_801579081f" source="http://flic.kr/p/cLvk7j" >}}

## Episode 2 : Scénario d'usage

### Explication

Je déborde un peu sur l'expérience utilisateur. Dans ce kata, je teste si mon interface est adaptée au comportement souhaité. Attention je ne teste pas l'intelligence de l'utilisateur, mais bien mon interface. Je ne valide pas non plus que la solution répond au problème. Je suis de l'utilisabilité de l'application.

Dans la pratique, on donne un mode opératoire / scénario à un utilisateur et on voit comment il se comporte avec l'application. Je vais donner un exemple sur le site de la ratp : Je souhaite me rendre ce vendredi 19h à l'opéra (bastille). Je veux savoir à quelle heure partir de mon travail (grande arche de la défense) et comment m'y rendre.

### Mode opératoire

Ecrire un mode opératoire sur le MVP 1 des sites Auchan Direct et Novencia.

### But pédagogique

Ce qui est différent entre le précédent kata et celui là, c'est que je suis exprès 'imprécis' car je souhaite voir si l'utilisateur comprend l'interface. Il ne faut donc pas utiliser de verbes qui correspondent aux boutons d'actions de l'interface. Il est aussi possible d'être 'fourbe' en demandant un scénario long alors que seule l'étape du milieu nous intéresse. Si on le fait avec quelques utilisateurs, on voit aussi apparaitre des patterns de comportement. Il reste ensuite à comprendre le pourquoi des comportements.


{{< img name="6816979068_b4d41c5094" source="http://flic.kr/p/booNnS" >}}

## Episode 3 : Wellbeing north star

### Explication

Vous avez fait une démo à un client ou laissé un client utilisé un prototype. C'est très bien et la question qui vient derrière, c'est "Qu'est ce que vous en faites ?". Et bien rien naturellement. Non je plaisante. L'idée est dans un premier temps de caractériser les retours. Je propose d'utiliser un innovation games pour cela, le [wellbeing north star].

### Mode opératoire

Exécuter les actions suivantes :

- Auchan Direct : Ajouter un kilo de farine à votre panier
- Ratp : Chercher le trajet le plus court entre Meudon et Romainville.
- Novencia : Trouver les valeurs du groupe

Proposer des améliorations.

Ensuite pour chaque site, remplir une étoile du nord avec plus et moins sur les 5 axes suivants :

- Utilisabilité
- Plaisir / Emotion
- Besoin
- Performance
- Portabilité

Dans un dernier temps, il s'agit pour chaque axe de proposer des améliorations.

Comparer les axes d'améliorations proposés avant et après l'utilisation de l'étoile du nord.

### But pédagogique

L'idée est plus de proposer une approche que de s'exercer. La démarche aide à prendre plus de feedback en compte. J'ai proposé les thèmes pour les axes de l'étoile et cela doit rester une proposition. A vous de trouver les plus pertinents pour votre contexte.


{{< img name="5391787911_597d41e1a2" source="http://flic.kr/p/9dsjGx" >}}

## Episode 4 : What's next ?

### Explication

Vous avez maintenant validé au fur et à mesure votre logiciel à base de tests utilisateurs et vous êtes même allés jusqu'à la production. La question qui suit est naturellement : Allez vous finir en prison sans passer par la case départ ? La question parait saugrenue et bien pas tant que ça. Nous mettons souvent beaucoup d'affect dans ce que l'on fait, ce qui nuit à la critique. La question que l'on devrait se poser, c'est plus de savoir si on a répondu au besoin et si ce n'est pas le cas de savoir ce que l'on en fait. Quelque soit le résultat, cela ne voudra pas (nécessairement) dire que vous avez mal travaillé. Cela voudra dire que vous avez mis en place une solution non adaptée au problème, ou que vous avez répondu à un faux problème,... Il n'y échec que si vous n'avez rien appris.

### Mode opératoire

Suite à la mise en production d'une nouvelle fonctionnalité sur le site, que vous faites dans les cas suivants ?

- Auchan Direct : Problème de controle de stock. Des articles bien que disponibles dans l'entrepot apparaissent comme non disponibles.
- Auchan Direct : Le service client me remonte que des utilisateurs souhaiteraient pouvoir commander plus que 10 occurrences d'un article. Il y a actuellement une limite dans l'application dont on ne connait pas l'origine.
- Ratp : Option personne à mobilité réduite activée avec aucune utilisation pendant 2 semaines
- Novencia : Gestion des évènements (http://www.novencia.com/actualites/evenements/) livré avec 20 connexions par jour

### But pédagogique

Sur ce kata, il y a de bonnes et de mauvaises réponses contrairement à d'autres katas où il y a plusieurs solutions possibles. Je donne des informations dans l'ordre des cas :

- Bug : A ajouter dans le product backlog, doit être priorisé avant de développement. Ce n'est pas parce que c'est un bug que c'est nécessairement la priorité numéro 1.
- Nouvelle demande : A ajouter dans le product backlog. Il est improductif de se poser la question de savoir si c'est un besoin non exprimé (nouvelle fonctionnalité) ou un besoin exprimé mais non développé (bug). C'est plus de la recherche de coupables, mais à l'arrivée cela ne change rien au fait que le besoin utilisateur est non couvert.
- Fonctionnalité inutile : A voir si on l'a fait enlever. En général c'est trop tard et le plus important est plus de ne pas développer la suite (d'autres fonctionnalités sur le même sujet)
- C'est impossible de savoir si c'est un succès ou pas. C'est une information dont je ne fais rien car je ne connais pas les conditions de succès de la fonctionnalité. C'est typiquement l'exemple ou la mesure est inutile car je ne sais pas quelle décision prendre à partir de cette information.

## Suite

Ce post étant le dernier de la série, il n'y a pas de suite possible. Et bien en fait non. En fonction des conclusions de l'étape de validation, il y a trois sorties possibles :

- Je passe au prochain sprint avec un nouveau sujet
- Je retravaille le sujet en reprenant à une des étapes
- Je considère qu'il n'y a pas eu de validation et qu'il n'y en aura jamais. Je clos le sujet en explicitant les raisons (hypothèse _A_ non validée, ...) et je passe au prochain sujet.


[design sprint]: https://library.gv.com/the-product-design-sprint-understand-day-1-e164f76e69cf#.6nykd8v0s
[story telling]: https://fr.wikipedia.org/wiki/Storytelling_(technique)
[wellbeing north star]: http://www.innovationgames.com/wellbeing-north-star/
[Comprendre]: /articles/2016-11-24-katastrophe_1_share
[Explorer]: /articles/2016-11-24-katastrophe_2_diverge
[Décider]: /articles/2016-11-24-katastrophe_3_converge
[Construire]: /articles/2016-11-24-katastrophe_4_build
[Valider]: /articles/2016-12-05-katastrophe_5_validate

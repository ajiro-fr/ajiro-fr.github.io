---
date: 2017-07-31
title: "De la dette technique à la décrépitude du code"
lang: fr
draft: false
authors:
  - clavier_thomas
tags:
  - software craftsmanship
  - code
  - entraînement
categories:
  - craft
illustration:
  name: washing-the-old-way
  source: https://flic.kr/p/7dKvhZ
description: |
  "Faut tout réécrire !", "Ajouter un champ ? Mais c'est hyper compliqué !". Voilà des expressions, marqueurs d'une base de code qui se détériore. Et si c'était normal ? Étude et détails du problème et de certaines solutions.
---

> "Faut tout réécrire !",
>
> "Ajouter un champ ? Mais c'est hyper compliqué !".

Voilà des marqueurs d'une base de code qui se détériore.
On parle souvent de dette technique pour décrire le coût d'entretien croissant du vieux code (code legacy). C'est [Arnaud Lemaire](https://www.linkedin.com/in/lilobase/) lors de [l'Agile France 2017](http://2017.conf.agile-france.org/) qui m'a permis de mettre d'autres mots sur les détails de ce concept. Pour moi, il est important de faire apparaître 3 types de coûts :

- la dette que je me suis engagé à rembourser
- la dégradation que je peux éviter en progressant,
- la décrépitude que je peux apprendre à limiter.

Dans les 3 cas, il est possible de contrôler ces coûts. Regardons ensemble comment et pourquoi.

## La dette technique est négociée.

{{< img name="bills" legend="La dette" source="https://flic.kr/p/4yfWkK" >}}

Imaginez, vous avez envie d'acheter un lave linge. Deux options s'offrent à vous :

- l'acheter à crédit pour l'avoir tout de suite
- attendre d'avoir économisé la somme avant de l'acheter comptant.

Dans le premier cas, vous allez prendre un raccourci consenti avec le banquier, dans le seul but d'obtenir le lave-linge plus rapidement. Et vous savez que vous aller devoir rembourser, c'est même un élément clairement établi dès l'acte d'achat.

Nous appellerons dette technique une dégradation de la qualité décidée en pleine conscience par l'ensemble des parties prenantes dans le seul but de tenir un délai très court. À l'image de la dette financière, tout le monde est d'accord pour rembourser plus tard, l'échéancier se doit d'être explicite dès la prise de décision.

Par exemple, imaginez une grande enseigne de bricolage 3 semaines avant les soldes. Leur principal concurrent lance une campagne publicitaire avec une fonctionnalité particulière sur le site. Ils aimeraient avoir la même pour les soldes. Le jour des soldes, la fonctionnalité était là avec une petite contrainte supplémentaire : redémarrer les serveurs toutes les heures. La dette a été brutalement remboursée en supprimant toute cette partie du code 24h après la fin de l'opération commerciale.

## La dégradation est volontaire.

{{< img name="garden-tools" legend="Outils de jardin" source="/authors/clavier_thomas/" >}}

Reprenons notre histoire de lave-linge. Maintenant que vous l'avez installé, vous commencez à l'utiliser. Et vous décidez de l'utiliser au plus vite, d'ailleurs vous êtes un ou une spécialiste des lessives, ça fait des années que vous utilisez un lave linge sans problème y compris pour laver vos outils de jardin.

Cet exemple purement fictif paraît évident, un mauvais usage du lave-linge va le dégrader, le détériorer.
Laver ses outils de jardin dans le lave-linge implique probablement un changement anticipé de celui-ci.

Dans du code, une maîtrise imparfaite de ses outils (langage, éditeur, chaîne de compilation, gestionnaire de dépendances, etc.) engendre de la même façon une dégradation progressive de l'ensemble de la base de code.
Ne pas savoir manipuler les patrons de conception (design pattern), ne pas connaître les concepts de programmation récents, ou ignorer les raccourcis clavier de son IDE participent à la dégradation du code.

De façon plus générale, un manque de maîtrise des outils et des savoirs faire de son métier, engendre une dégradation de la production.

Je me rappelle une équipe qui ne maîtrisant pas correctement l'API de java avait redéveloppé tout un ensemble de classes de bases. En plus d'avoir perdu du temps à réécrire du code natif, ils s'étonnaient du coût d'entretien de ces classes.

## La décrépitude n'est pas fatidique.

{{< img name="decrepitude-cars" legend="Décrépitude" source="https://flic.kr/p/e8uJdZ" >}}

Enfin, si l'on reprend, notre histoire de lave linge, même en respectant scrupuleusement tous les conseils du fabricant, il est probable qu'il finisse en déchetterie. En effet, certaines pièces vont s'user, d'autres vont casser.

De la même façon, l'accumulation de code va progressivement produire de la complexité, qui va augmenter les coûts de maintenance et d'ajout de fonctionnalités.
Une parfaite maîtrise des éléments d'architecture, associée à un effort permanent de restructuration de la base de code permet d'éviter cette dégradation lente et progressive du logiciel. Contrairement à un produit manufacturé, le coût de changement d'une partie du code est faible.
Pour changer l'équivalent d'un engrenage, le développeur n'est pas obligé de tout démonter ou de pendre le risque de fausser un pas de vis au remontage.

## S'entraîner au moins une fois par semaine.

{{< img name="kata" legend="Kata" source="https://flic.kr/p/cEv6yb" >}}

Nous venons de voir les différents types de coûts liés à la mauvaise qualité du code. Afin de les éviter ou de les réduire, il est nécessaire de progresser dans sa maîtrise des outils et des savoir-faire de son métier de développeur. Pour cela je pense qu'une solution est l'entraîment.

À l'image d'une équipe de sport qui s'entraîne très régulièrement avec son entraîneur, une équipe de développement devrait s'entraîner au moins une fois par semaine avec l'aide d'un œuil externe. Il existe de nombreuses techniques dont les noms sont pour la plupart tirés du monde des arts martiaux (dojo, kata, randori, mob programing...) et certains sites comme [codingDojo](http://codingdojo.org/) regorgent d'exercices.

Le temps d'entraînement fait partie intégrante du travail du développeur et ne devrait pas être systématiquement relégué au temps du midi ou du soir.

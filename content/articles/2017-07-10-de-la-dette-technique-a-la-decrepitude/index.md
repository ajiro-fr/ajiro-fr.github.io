---
date: 2017-07-10
title: "De la dette technique à la décrépitude du code"
lang: fr
draft: true
authors:
  - clavier_thomas
tags:
  - craft
  - code
categories:
  - craft
illustration:
  name: je-ne-sais-pas-encore
  source: 
description: |
  Le code s'abime, c'est un fait. Histoire d'une analogie de la vie courante.
---

On parle souvant de dette technique pour désigner le coût d'entretient croissant du code legacy. C'est [Arnaud Lemaire](https://www.linkedin.com/in/lilobase/) à [Agile France 2017](http://2017.conf.agile-france.org/) qui m'a permis de mettre des mots sur les détails de ce concept. Pour moi, il est important de faire apparaitre 3 types de coûts : 
- la dette que je me suis engagé à remboursé
- la dégradation que je peux éviter en progressant
- la décrépitude que je peux apprendre à réduire.

## La dette technique est négocié.

Imaginez, vous avez l'envie d'acheter un lave linge. Deux options s'offrent à vous : 
- l'acheter à crédit pour l'avoir tout de suite
- attendre d'avoir économisé la somme avant de l'acheter comptant.

Dans le premier cas, vous allez prendre un raccourci consenti avec le banquier, dans le seul but, d'obtenir le lave-linge plus rapidement. Et vous savez que vous aller rembourser, c'est même un élément clairement établie dès l'acte d'achat.

J'appelle dette technique une dégradation de la qualité décidé en pleinne conscience par l'ensemble des parties prenantes dans le seul but de tenir un délais très court. À l'image de la dette financière, tout le monde est d'accord pour rembourser plus tard, l'échéancier se doit d'être explicite dès le début de la décision.

Par exemple, imaginez une grande enseigne de bricolage 3 semaines avant les soldes : 

- Notre principal concurant vient de lancer une campagne publicitaire avec telle fonctionnalité, on aimerait lancer la même dans les jours à venir. Pensez-vous que c'est possible ?
- Les développeurs : oui, mais ce sera probablement très salle ... 

Et effectivement, la fonctionnalité était là à l'heure, avec une petite contrainte supplémentaire : rebouter les serveurs toutes les heures. La dette a été brutalement remboursé en supprimant toute cette partie du code 24h après l'opération commerciale.

## Dégradation volontaire.

Reprenons notre histoire de lave-linge. Maintenant que vous l'avez installé, vous commencez à l'utiliser. Et vous décidez de ne pas lire le mode d'emploie, d'ailleurs vous êtes un ou une spécialiste des lessives, ça fait des années que vous utilisez un lave linge sans problème y compris pour laver vos outils de jardin. 

Cet exemple purement fixtif, parait évident, un mauvais usage du lave-linge va le dégrader, le détèriorer.
Laver ses outils de jardin au lave linge implique probablement un changement anticipé.

Dans du code, une maitrise imparfaite de ses outils (langage, éditeur, toolchain, etc.) engendre de la même façon une dégradation progressive de l'ensemble de la base de code. 
De façon plus générale, un manque de maitrise parfaite de son poste, engendre une dégradation globale de la production. 

TODO: Exemple

## Décrépitude

Enfin, si l'on reprend, notre histoire de lave linge, même en respectant scrupuleusement tous les conseils du fabricants, il est probable que notre lave-linge finisse en déchetterie. En effet, certaines pièces vont s'user, d'autres vont casser. 

De la même façon, l'accumulation de code va progressivement produire de la complexité qui va augmenter les coûts de maintenance et d'ajout de fonctionnalités.


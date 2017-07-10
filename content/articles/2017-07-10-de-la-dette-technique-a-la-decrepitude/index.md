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
  Le code s'abime volontairement ou pas, l'histoire d'une analogie de la vie courante.
---

On parle souvant de dette technique pour désigner la partie du code legacy qui coute très chère à entretenir. C'est 
[Arnaud Lemaire](https://www.linkedin.com/in/lilobase/) à [Agile France 2017](http://2017.conf.agile-france.org/) qui m'a permis de mettre des mots sur ces parties du logiciel.

## Dette technique

Imaginez, vous avez l'envie d'acheter un lave linge. Deux options s'offrent à vous : 
- l'acheter à crédit pour l'avoir tout de suite
- attendre d'avoir économisé la somme avant de l'acheter comptant.

Dans le premier cas, siemment vous allez prendre un racourci consenti avec le banquier et l'utilisateur du lave-linge, c'est à dire vous, dont le seul objectif est d'obtenir le lave-linge plus rapidement. Et vous savez que vous aller rembourser le banquier.

J'appelle dette technique un racourci dans le code décidé en pleinne conscience par l'ensemble des parties prenantes dans le seul but de tenir un délais très court. À l'image de la dette financière, tout le monde est d'accord pour rembourser plus tard, l'échéancier se doit d'être explicite dès le début de la décision.

Par exemple, imaginez une grande enseigne de bricolage qui nous appel 3 semaines avant les soldes en disant : 
Notre principal concurant vient de lancer une campagne publicitaire en 4 par 3 avec telle fonctionnalité, on aimerait lancer la même dans les jours à venir. Pensez-vous que nous pourrons avoir cette même fonctionnalité ? 

Nous avons répondu oui, en précisant bien que la solution serait probablement très salle ... et effectivement, la fonctionnalité était là à l'heure, avec une petite contrainte supplémentaire : rebouter les serveurs toutes les heures. Nous avons remboursé brutalement la dette en supprimant toute cette partie du code 24h après l'opération commerciale.

## Dégradation

## D2crépitude

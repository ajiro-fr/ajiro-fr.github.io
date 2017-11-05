---
date: 2017-11-01
title: "BDD : Découvrir par les impacts (et sans code)"
lang: fr
draft: false
authors:
  - retiere_samuel
tags:
  - BDD
categories:
  - craft
illustration:
  name: talking
  source: https://www.flickr.com/photos/127107506@N02/15106281058/
description: |
  Dans DD, voici le Behavior Driven Development (BDD) pratique autour des tests fonctionnels aussi connu sous le terme de spécifications par l’exemple que je me propose de présenter avec une vision non développeur.
---

Cela doit être dû à des fans de foot et de Didier Deschamps, on voit de plus en paraitre des pratiques en DD dans le monde du développement logiciel. Dans la série, voici le Behavior Driven Development (BDD) pratique autour des tests fonctionnels aussi connu sous le terme de spécifications par l’exemple que je me propose de présenter avec une vision non développeur.

Normalement j’aurais dû commencer par la définition du BDD à la sauce wikipedia. C'est ce que je fais dans le version anglaise de ma présentation. Et bien ça ne sera pas le cas ici car la définition de la version française est beaucoup trop orientée développeur à mon goût et je vois plus cette pratique comme venant de l'XP que de l'agile. Plutôt que de parler définition, partons direct sur du BDD.

## Le distributeur de boissons
{{< img name="vendingMachine" legend="Drinks vending machine" source="https://www.flickr.com/photos/st3f4n/2707271298" >}}

> **Given** a bottle of Aquarius water costs 1,5 Eur
> **And** I put 2 Eur in the vending machine
> **And** the vending machine got enough change and water
>
> **When** I ask for a bottle of Aquarius
>
> **Then** the vending machine delivers a bottle of Aquarius And gives me 50 cents

## C'est du BDD ?
{{< img name="headache" legend="Headache" source="https://www.flickr.com/photos/darkhead/4465272084/" >}}

Et bien oui et non à savoir que je suis parti direct sur de l’implémentation de scénarios de tests. Dans cet exemple, je suis en train d’utiliser l’outil « Cucumber » avec un scénario au format « Gherkin ». Et donc si le BDD c’est plus que ça, c’est quoi le BDD ? J’attends 3 bénéfices du BDD. Il y a bien l’automatisation des tests, mais je mettrai d'abord la collaboration et la connaissance du domaine (fonctionnel).

## Collaboration
{{< img name="yoga" legend="14er Yoga Gurus" source="https://www.flickr.com/photos/zachd1_618/8544069414/" >}}
Le BDD repose sur trois profils qui vont créer ce que l’on appelle les three amigos : La maitrise d’ouvrage, le développeur et le testeur.

{{< img name="threeAmigos" legend="Three amigos" source="https://www.flickr.com/photos/richardhsu/33024139135/" >}}

Un des attendus du BDD c’est de casser les silos et de créer un objectif commun. Je vais focaliser tous les intervenants du process de développement vers des scénarios d’usage (utilisateur). En mode BDD, je dois bénéficier de cette conversation AVANT que les développements ne commencent.

## Connaissance du domaine
{{< img name="polarCamping" legend="Polar camping" source="https://www.flickr.com/photos/zachd1_618/14053466736/" >}}

Si je simplifie le process de développement produit, je pourrais dire que je commence par identifier des problèmes puis que je propose des solutions. Une fois que la solution à émergée, les 3 amis vont se réunir pour discuter des futurs scénarios d’usage utilisateur. De ces conversations, il en ressortira une compréhension commune des besoins et à l’arrivée une meilleure connaissance pour chacun du domaine fonctionnel dans lequel le produit intervient.

{{< img name="hamburg" legend="Hamburg" source="https://www.flickr.com/photos/drzaro/6413888293" >}}

Cela a un impact sur le rôle de développeur, on considère que la maitrise fonctionnelle d’un développeur est importante. Il n'est plus la ressource qui peut travailler du jour au lendemain dans n'importe quel secteur d'activité. A l’issue de ces conversations, je suis capable d’identifier des exemples de comportement futur du produit. Ces dits exemples sont souvent appelés scénarios BDD.

## Automatisation des tests
{{< img name="chrysler" legend="Chrysler" source="https://www.flickr.com/photos/chryslergroup/13193883615/" >}}

C’est le raccourci qui est souvent fait à propos du BDD à savoir BDD = Automatisation des tests fonctionnels. C'est incorrect dans le sens où l'automatisation des tests fonctionnels est un sous ensemble du BDD. Je vais exprimer mes tests fonctionnels sous forme d’exemples d'usage que je vais appeler scénarios. Si je veux automatiser les tests, je serais sûrement obligés d’utiliser un formalisme précis comme le Given, When, Then ou en français Etant donné [le contexte], quand [l’évènement] alors [le résultat].

{{< img name="longPeakKeyhole" legend="Long Peak's Keyhole" source="https://www.flickr.com/photos/zachd1_618/31950332166/" >}}

Sauf à créer une nouvelle application, il faut savoir qu’il faudra d’abord suer (au travail) pour ensuite atteindre la plénitude (la confiance dans les tests automatiques). Il y a une bosse à passer lorsque l'on part d'une application existante sans tests automatisés. Tout au début, on ajoute des tests automatisés mais ils sont insuffisants pour se passer de tests manuels. C'est une période où le travail est un peu fait en double. Ensuite, le niveau de tests automatisés est assez élevé pour commencer à ne plus faire de non régressions manuelles. Les comportements non désirés sont constatés très tôt dans le processus de développement et il coûte donc moins cher à régler.

{{< img name="Canyonlands" legend="Canyonlands" source="https://www.flickr.com/photos/zachd1_618/33147445333/" >}}

je passe de l'adage "je brule un cierge" quand j'arrive à la production à "keep cool" la conformité à déjà été tester des dizaines de fois.

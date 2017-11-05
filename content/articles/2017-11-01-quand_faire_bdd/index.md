---
date: 2017-11-01
title: "BDD : Quand l'utiliser"
lang: fr
draft: false
authors:
  - retiere_samuel
tags:
  - BDD
categories:
  - craft
illustration:
  name: hexagon
  source: https://www.flickr.com/photos/73689755@N06/15709567915/
description: |
  L'erreur classique quand on commence à faire du BDD, c'est d'en faire tout le temps et de se retrouver avec beaucoup beaucoup de scénarios. Je propose donc d'expliquer quand le BDD est pertinent (ou pas).
---
  
Tout d'abord commençons par parler processus de développement logiciel. Dans une organisation un peu mature, je retrouve souvent les activités suivantes :
> **1.** Clarification du besoin : Il s'agit de définir le problème auquel je veux répondre. C'est souvent le rôle des product managers.<br>
> **2.** Idéation : A un problème donné, je vais proposer des solutions puis en choisir quelques unes pour les (in)valider. Je rentre plus dans le monde des UX designers.<br>
> **3.** Tests utilisateurs : Je réalise des prototypes de solution que je confronte avec des utilisateurs potentiels. Je récupère ensuite du feedback.<br>
> **4.** Construction : Je passe du monde du prototype au monde du logiciel qui fonctionne en production. C'est à ce moment que la main est passé à nos 3 amis (BA/PO, Développeur et testeur).<br>
> **5.** Production : Une fois mes livrables en production, j'active, je monitore et je récupère la valeur réelle de mes incréments de valeur.<br>

{{< img name="workers" legend="Workers" source="https://www.flickr.com/photos/thepismire/3522318478/" >}}

Le BDD, c'est dans le monde de la construction. Il s'agit de décrire le comportement attendu d'une solution. Je suis plus dans un test de conformité de la solution au scénario d'usage utilisateur. Il est aussi possible d'utiliser pendant les réunions de 3 amigos pour faire de l'étude exploratoire de scénarios. Je suis alors plus dans de l'idéation.

## Différence entre scénarios BDD et critères d'acceptance
{{< img name="storyBoard" legend="Not the dentist story board" source="https://www.flickr.com/photos/gevertulley/4916221689" >}}
Les critères d'acceptance servent à savoir comment le développement sera validé lors d'une démo. Ils décrivent le scénario d'usage futur et ils sont même censés servir de script pendant la démo. Je retrouve aussi dans les critères d'acceptance des règles qui pourraient ne pas avoir été données dans la user story. Il n'y a pas de format particulier à utiliser. Quand je parle de scénario BDD, c'est que j'ai en tête de l'automatiser derrière. Je vais utiliser un format précis (Given, When, Then) pour décrire le comportement final de l'application. Dans les deux cas, je suis en train de décrire le comportement futur de l'application. 
Les différences que je vois :
> - Les critères d'acceptance peuvent contenir des règles de gestion métier
> - Les scénarios BDD nécessitent un formalisme précis. Ils peuvent ne traiter qu'un "bout" d'une user story.

A partir du moment où je mets les règles de gestion d'une user story dans sa définition, je considère que les scénarios BDD sont peu ou prou les critères d'acceptance.

## La petite blague
{{< img name="polonais.jpg" legend="Histoire belge" source="http://bescherelletamere.fr/wp-content/uploads/2014/10/POLONAIS.jpg" >}}
Un jour Caroline qui reçoit une correspondante polonaise pour sa fille, décide d'acheter un gateau d'anniversaire. Il se trouve qu'il est pour la dite polonaise qui a son anniversaire ce moment là. La demande au patissier est simple "Ecrire joyeux anniversaire en polonais". Comme quoi, une bonne spécification ne suffit toujours pas alors q'un exemple aurait (peut-être) pu permettre de mieux comprendre. Le BDD aide à limiter l'incompréhension.

## La stratégie de tests
{{< img name="testingPyramid.png" legend="Automated testing pyramid" source="" >}}
Parlons maintenant stratégie de tests. Elle décrit pour un nouveau changement comment la conformité de la solution sera validé. Je peux décider que tel type sera testé manuellement, tel autre par une couverture classique test unitaire, test d'acceptance et test d'interface utilisateur.
Pour faire simple :
> - Les tests unitaires sont les tests du développeur pour le développeur.
> - Les tests d'acceptance sont là pour valider les règles de gestion, l'intention fonctionnelle,... ce que je qualifie souvent d'intelligence métier. Si j'ai une architecture applicative correcte, je ne dois pas avoir d'intelligence métier que dans la couche services et pas dans l'interface utilisateur. C'est le monde du BDD. Comme je ne tape pas la couche graphique, je suis capable d'intégrer les tests quasiment n'importe où dans le code.
> - Les tests d'interface utilisateur sont des tests de comportement graphique. Il s'agit plus de valider le comportement des différents composants graphiques comme par exemple le comportement des différents browsers.

## Tautologie
{{< img name="tautologie" legend="Sales tautology" source="https://www.flickr.com/photos/quinnanya/5893333070/" >}}
C'est là que l'on arrive au monde de la tautologie que j'ai longtemps pris pour de la totologie. Définition : La tautologie est une phrase ou un effet de style ainsi tourné que sa formulation ne puisse être que vraie. Dans quel cas rencontre-t-on cette étrange bête? Et bien dans tous les cas où l'application n'est en fait qu'un passe plat. Je prends une donnée d'un côté et je renvois la même de l'autre côté. Aucun enrichissement, aucun contrôle métier, aucune aggrégation,... En conclusion rien de rien. Je veux valider de l'intelligence métier et pour paraphraser Coluche le gars il n'a pas un échantillon sur lui.

## L'exemple final
{{< img name="panneau" legend="Arrows" source="https://www.flickr.com/photos/eltpics/10377091786/" >}}
Je récupère un fichier qui contient des soldes de comptes que je dois intégrer dans une application. J'ai un format de fichier avec les champs numéros de compte, devise, date de valeur et montant obligatoires. Voici une série de tests :
> - Vérifier que la devise est présente dans le fichier : Test unitaire. Il n'y a pas d'intelligence métier, un test unitaire suffit.
> - Vérifier que la date de valeur du solde est une date ouvrée pour la devise : Test d'acceptence (scénario BDD). J'ai de l'intelligence métier.
> - Vérifier que si le montant est négatif il s'affiche en rouge : Test d'interface utilisateur. Il n'y a pas d'intelligence métier.

## Epic, User stories et scénarios BDD
{{< img name="avions" legend="Sywell Air Show 2014" source="https://www.flickr.com/photos/wikidave/14791957760" >}}
A l'arrivée, cela veut dire qu'il n'y a pas systématiquement un scénario BDD pour une user story et qu'une user story peut posséder plusieurs scénarios BDD. Je peux aussi avoir des scénarios BDD au niveau Epic. Il s'agit de scénarios plus longs en terme de scénario d'usage.

Dans la série BDD:
-[BDD Decouvrir par les impacts]
-[BDD Quand l'utiliser]
-[BDD Comment l'utiliser]

[BDD Decouvrir par les impacts]: /articles/2017-11-01-introduction_bdd
[BDD Quand l'utiliser]: /articles/2017-11-01-quand_faire_bdd
[BDD Comment l'utiliser]: /articles/2017-11-01-comment_gherkin_bdd

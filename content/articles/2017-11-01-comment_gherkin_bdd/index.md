---
date: 2017-11-01
title: "BDD : Comment l'utiliser"
lang: fr
draft: true
authors:
  - retiere_samuel
tags:
  - BDD
categories:
  - craft
illustration:
  name: cucumber
  source: https://www.flickr.com/photos/maxmallett/4730708709/
description: |
  Comment écrire des scénarios au format Gherkin ? L'explication par l'exemple.
---
  
Pour faire le tatillon, le nom de l'article est légèrement trompeur car je vais plus parler de l'outil cucumber et du langage gherkin que de BDD avec sa conversation. Dans ce post, je propose de regarder des cas pratiques et d'écrire quelques scénarios.

## Les bases du Gherkin
{{< img name="gherkinTower" legend="Gherkin tower" source="https://www.flickr.com/photos/fatedsnowfox/4940743037/" >}}
Par défaut, voici comment un scénario doit se présenter.
> **Scenario**:[Nom du scénario]<br>
> **Given** [Contexte]<br>
> **When** [Evènement]<br>
> **Then** [Impact]<br>

Le nom du scénario correspond à ce que je veux tester. Le contexte donne les conditions dans lequel le scénario doit s'exécuter. Je suis sur des verbes au passé. L'évènement correspond à l'action qui génère le dit évènement. Sauf cas rare, j'ai une seule action et le verbe est au présent. J'ai deux verbes quand les actions doivent être simultanées pour générer un résultat. L'impact correspond aux résultats attendus.

## La machine à tickets
{{< img name="tap" legend="TAP Union Station" source="https://www.flickr.com/photos/viriyincy/8926668213/" >}}
Je vais prendre comme exemple les caisses automatiques de la RATP. Pour mes amis non parisiens, voici comment elles fonctionnent:
- Tout d'abord, il faut choisir entre recharger le pass navigo pour ceux qui prennent des abonnements ou acheter des tickets.<br>
- Pour les tickets, il y a les tickets standards vendus à l'unité ou en carnet plus quelques déclinaisons comme les tarfis réduits.<br> 
- Il y a aussi une autre partie qui concerne la banlieue avec pour chaque billet choix de la gare de départ et de la gare d'arrivée.<br>
- Pour les moyens de paiement, je pars sur carte bleue, pièces et billets.<br>

## Scénario de base : Avoir un ticket
{{< img name="ltm" legend="London Transport Museum" source="https://www.flickr.com/photos/tubb/4659945294/" >}}
Pour la suite, je vais faire les scénarios en français. Et donc c'est parti :

> **Etant donné que** la machine est branchée **ET**
> que je suis assez grand pour l'utiliser **ET**
> que la lumière est assez forte pour que je puisse lire **ET**
> que je ne suis pas trop saoul pour lire **ET** ...

STOP. Qu'est ce que tu fais Samuel ? <br>
Et bien je donne toutes les conditions nécessaires au scénario. C'est ce que font la plupart des personnes quand elles commencent le BDD, mais ça n'est pas ce qu'il faut faire. Je mets dans le contexte les informations nécessaires au scénario mais je suis par défaut dans le cas nominal. Tout ce qui n'est pas nécessaire au scénario je ne le mets pas même si la donnée est obligatoire à l'écran.

Autre problème dans le scénario précédent, il n'a pas de nom et je ne sais pas ce que je teste. Je réessaie:

> **Scénario**:Distribution de ticket<br>
> **Etant donné que** le billet standard vaut 2 EUR **ET**<br>
> 	que j'ai choisi un billet standard<br>
> **Quand** j'insère 2 EUR<br><br>
> **Alors** Le distributeur délivre un billet<br>

Dans ce scénario, j'explique tout de suite ce que je teste à savoir la distribution de ticket. J'ai exprès changé le prix du billet réel (1,9EUR) pour ne pas avoir de pollution sur l'évènement (cele aurait nécessité une somme). Je n'ai rien précisé sur le justificatif car c'est hors de mon scénario. J'aurais éventuellement pu faire un scénario avec un billet gratuit pour ne pas avoir l'étape argent. Je ne l'ai pas fait car même si cela simplifie mon test, je tombe dans un scénario d'usage peu représentatif de la réalité.

## Test en fin de chaine : Rendre la monnaie
{{< img name="coins" legend="Coins" source="https://www.flickr.com/photos/76657755@N04/7027587393" >}}
Que se passe-t-il si je veux tester la fin d'une chaine de valeur? Traditionnellement, je devrais d'abord faire toutes les saisies pour arriver au test qui m'intéresse. En BDD, c'est plus simple car je me positionne directement où je veux.

> **Scénario**:Rendre la monnaie montants différents
> **Etant donné que** le billet standard vaut 1,9 EUR **ET**
> 	que j'ai choisi un billet standard
> **Quand** j'insère 2 EUR
> **Alors** Le distributeur rend 10 cts

> **Scénario**:Rendre la monnaie montants égaux
> **Etant donné que** le billet standard vaut 2 EUR **ET**
> 	que j'ai choisi un billet standard
> **Quand** j'insère 2 EUR
> **Alors** Le distributeur ne rend pas de monnaie

Qu'est ce qui est à noter ? <br>
Dans les deux scénarios ci-dessus, je ne précise pas que le distributeur délivre un billet. C'est normal car je ne suis pas en train de tester la distribution de ticket, mais bien le rendu de monnaie. 
Que se passe-t-il quand un test est KO ? <br>
Et bien il passe au rouge. Il ne dit pas pourquoi il est en échec. Si vous mettez la distribution de tickets dans le test du rendu de la monnaie, beaucoup de tests passeront au rouge le jour où la distribution ne fonctionnera pas. Et vous passerez beaucoup de temps à trouver ce qui plante.

Aute point à noter, quand je fais un scénario dans un process en plusieurs étapes je n'ai pas besoin de faire tout le début de la chaine pour faire mon scénario. Pour faire simple, le contexte de l'étape 2 est le résultat de l'étape 1. Je peux partir du principe que l'étape précédente est ok et donc dans ce cas j'aurais telles conditions.

Je fais de même quand je communique avec d'autres applications. Je teste que je leur envoie la bonne demande. En retour je pars du principe qu'elles m'ont répondu correctement et je teste le comportement de mon application en conséquence. Je mets dans le background les données qui correspondent à un retour "normal".

## Background : Le paiement par carte bleue
{{< img name="credit" legend="Credit" source="https://www.flickr.com/photos/cafecredit/26787351554/" >}}
Cette fois-ci, je me mets dans un contexte commun à plusieurs scénarios. Je vais l'enrichir avec quelques suppléments de contexte. Je me mets en anglais pour utiliser les bons mots.

> **Background**:<br>
> **Given** le pass mensuel vaut 75 EUR **ET**<br>
> 	le paiement est par carte bleue<br>

> Scenario:PaiementCarteBleueAcceptee<br>
> **Given** la carte est approvisionnée<br>
> **When** je valide le code de carte bleue<br>
> **Then** le paiement est validé ET la vente validée<br>

> **Scenario**:PaiementCarteBleueRefusee<br>
> **Given** la carte n'est pas approvisionnée<br>
> **When** je valide le code de carte bleue<br>
> **Then** le paiement est refusé ET la vente bloquée<br>

Le but de cet exemple est de montrer l'utilisation du mot background. Les 2 scénarios suivants récupèrent le given du background. Par exemple, le given du scénario 1 est en fait :<br>
> **Given** le pass mensuel vaut 75 EUR **ET**<br>
> 	le paiement est par carte bleue **ET**<br>
> 	la carte est approvisionnée<br>

Le mot background est intéressant à utiliser quand j'ai un contexte commun à plusieurs scénarios. Dans le cas où j'ai besoin de pas mal de données en entrée, je peux aussi utiliser des tableaux
> **Given** les soldes cash suivants<br>
> |NumCompte|Devise|Montant|DateValeur|<br><br>
> |ABC|EUR|100|20171102|<br>
> |BCD|USD|200|20171102|<br>
> |CDE|GBP|300|20171102|<br>

Attention tout de même avec l'utilisation des tables, il ne s'agit pas de mettre du Excel dans des scénarios. Cela doit rester avant tout lisible. Je n'essaie pas de mettre le moins de mots possibles et de factoriser à gogo. Rappelez vous, BDD rime avec conversation.

## Scenario outline : Montant à payer
{{< img name="travelCards" legend="Travel cards" source="https://www.flickr.com/photos/legge/531658349/" >}}

Je présente cette fois l'utilisation du scénario outline qui permet de faire varier des données. Il est particulièrement utile quand à une action identique, j'ai des résultats différents en fonction du contexte.

> **Scenario outline**:Nombre de tickets a distribuer<br>
> **Given** un carnet contient <nombreTickets> tickets<br>
> **When** je sélectionne <nombreCarnets> carnets<br>
> **Then** je dois livrer <ticketsDelivres> tickets<br>
> **Examples**:<br>
> |nombreTickets|nombreCarnets|ticketsDelivres|<br>
> |10|2|20|<br>
> |10|3|30|<br>
> |20|2|40|<br>

Si ce scénario montre bien comment utiliser le mot scenario outline, il est cependant complètement inutile. Il n'y a aucune intelligence métier dans ce test.

## La suite
Comme je ne vais pas faire tout les mots du language Gherkin, le plus simple est d'aller voir ici : http://docs.behat.org/en/v2.5/guides/1.gherkin.html. Si vous avez lu mes 3 posts sur le BDD, vous êtes suffisament à l'aise pour commencer à écrire vos premiers scénarios.

---
aliases: /articles/2017/05/16/craftagiledevops_approche_systemique.html
date: 2017-05-16
title: "Le collectif Craft Agile DevOps : Pour une approche systémique"
lang: fr
draft: true
authors:
  - retiere_samuel
  - clavier_thomas
tags:
  - system thinking
  - coaching
illustration:
  name: illustration
  source: http://flic.kr/p/8X4Fi1
---
Nous aurions pu vous expliquer combien il est bon de faire un changement en incluant toutes les composantes de l'agile / continuous delivery / devops / Whatever ... , mais nous avons plutôt décidé de vous raconter des histoires sur ce qui se passe quand on ne le fait pas.


{{< img name="3843103318_6e20508e49" source="http://flic.kr/p/6RAUJ3" >}}

## Du flux batché par Samuel
Il y a quelques années, je me retrouve à accompagner seul (coach agile) une équipe d'une quinzaine de personnes dont le problème principal était l'incapacité à livrer fluidement. Il fallait de grands efforts pour réussir à sortir le stock de demandes en cours. Petit détail qui aura son importance pour la suite, ils travaillaient sur une jeune application mais ils avaient toujours eu la pression pour livrer vite.

Très vite j'en arrive à la conclusion que j'ai en face de moi un système globalement saturé. Je leur propose de commencer par visualiser l'encours et leur process de développement avec pour effet de remplir l'intégralité d'un tableau blanc taille XXL. Nous coupons donc l'alimentation en nouvelles fonctionnalités pour faire revenir l'encours à un niveau raisonnable. Ensuite, nous changeons l'animation du daily pour passer en flux tiré. Suite à ce changement, il y a un engouement de l'équipe car la charge de travail devient plus raisonnable.

Et c'est là le début des problèmes. Suite aux nombreux raccourcis pris pour livrer en production depuis le début du projet, il est très compliqué de livrer l'application en environnement de tests. Seuls deux personnes savent le faire sachant que ce sont ses mêmes personnes qui sont expertes sur beaucoup de domaines. La montée en compétences n'a pas été gérée. Cerise sur le gateau, les tests consiste à prendre une copie de la production et à lancer un run type production qui prend 3 jours à tourner.

In fine il y a eu du mieux suite à l'accompagnement mais assez peu par rapport aux attentes. La mauvaise qualité du déploiement et du testing a généré des effets de batch sur le tableau, tous les tickets bougeant ensemble sur la fin du process. Ce gros point noir a finalement été résolu 2 ans plus tard quand un coach craft est venu les aider à refondre leur bousin. Au passage il a aussi fallu un changement de manager, le premier ne souhaitant s'attaquer à la montagne qu'il avait généré de part la pression sur les dates.


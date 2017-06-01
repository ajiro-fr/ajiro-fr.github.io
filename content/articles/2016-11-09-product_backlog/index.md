---
aliases: /articles/2016/11/09/product_backlog
date: 2016-11-09
title: "Dis papa, c'est quoi un product backlog?"
lang: fr
hidden: false
authors:
  - retiere_samuel
tags:
  - produit
  - methodologie
categories:
  - product
illustration:
  name: 13916708955_b012236d81
  source: https://www.flickr.com/photos/myharries/13916708955
---

Il y a quelques années, le product backlog se résumait pour moi à des User Stories regroupées par epic et une forme canonique _'En tant que, je veux que ... parce...'_. Aujourd'hui, je pense que passer par cette vision du product backlog freine la maturité. Dans la suite de ce post, je décris la construction d'un product backlog dans l'ordre chronologique.

## Etape 1 : Je passe mon tour

Je saute l'étape où je décide quelle initiative je lance car c'est un sujet pour un futur post et que je ne veux pas le résumer à deux lignes. Je parlerai matrice de décisions et coût du retard.

{{< img name="4882669123_38df0fcf8e" source="https://www.flickr.com/photos/dgeen/4882669123" >}}

## Etape 2 : Réflechis avant de foncer

J'ai maintenant un sponsor, un chef de projet, un chef de produit, et ainsi de suite que l'on va appeler parties prenantes. Par contre, est ce que l'initiative que je veux lancer est si claire que cela ? Si je vais voir toutes les parties prenantes et que je leur demande à quel problème elles répondent, est ce que je vais avoir une réponse ? De mon expérience personnelle, c'est rarement le cas et il n'est pas inutile de se poser deux secondes avant de partir bille en tête et de finir dans le décor.

Je commence par mettre à plat le problème auquel je veux répondre et envisager une solution. On peut partir sur du Lean Canvas de Ash Maurya, mais je préfère maintenant un canvas plus simple créé par Thierry Montulé avec l'influence de Gery Derbier :

![Canevas Problème-Solution](/assets/articles/product_backlog/canvas.svg){: .img-fluid }

Il faut moins d'une demi journée pour le remplir. C'est clairement un atelier de type vision et il est donc préfèrable de brasser large pour avoir toutes les sensibilités représentées.

Je garde la partie solution dans le canvas pour ne pas brider et pour la conduite du changement (ne pas dire tout de suite qu'il faut arrêter de partir direct sur la solution). L'important est de savoir à quel problème on répond et comme je garde ce formalisme pour trois niveaux de granularité je préfère garder le pavé solution même si cela peut paraitre prématuré. Une fois que j'ai rempli le canvas, j'ai explicité problème, embryon de solution et hypothèses sur lesquelles reposent mon initiative. Ensuite, on dérisque au besoin certaines questions/hypothèses par des interviews, études de marché...

{{% style class="bleu" %}}
_Output : L'initiative parait faire du sens à savoir que je sais à quel problème je réponds. Au regard des hypothèses et des risques, l'initiative est viable._
{{% /style %}}


{{< img name="19869181208_15677d3cb7" source="https://www.flickr.com/photos/p_valdivieso/19869181208" >}}

## Etape 3 : Le jalonnement

J'ai un embryon de solution viable et j'ai levé certaines hypothèses. Je vais maintenant passer un premier tamis de découpage et identifier les grosses patates que j'appelle jalon et les mettre dans l'ordre. Pour cela, je pars souvent sur l'innovation game _'remember the future'_ sachant que l'on peut faire sans. À quoi sert cette étape ? À affiner pour ne pas partir sur un effet tunnel d'un an et à comprendre ce qui apporte le plus de valeur. Il y a une autre raison qui est lié au budget et au staffing. J'essaie d'identifier des jalons de 1 à 3 mois qui permettent de faire de l'allocation de ressources de type budget glissant (cf beyond budgeting) et aussi de garder une équipe sur un sujet pour quelque temps pour gérer la montée en compétences. À la fin de cette étape, j'ai découpé mon initiative en une poignée de jalons. La question «_Comment saurez-vous que c'est un succès ?_» du canvas au niveau jalon aide à savoir si on doit ou non continuer à allouer du budget.

{{% style class="bleu" %}}
_Output : Mon initiative est découpée en gros glaçons (jalons) et j'ai une idée de l'enchainement temporel._
{{% /style %}}


{{< img name="8599735985_0f513948a1" source="https://www.flickr.com/photos/p_valdivieso/8599735985" >}}

## Etape 4 : L'expérience utilisateur

Je prends les premiers jalons et je zoome. Je ne vais pas produire du logiciel pendant 3 mois et livrer à la fin. Sans continuous delivery point de salut. Et donc comment je fais pour livrer au fur et à mesure ? Et bien qu'est-ce que tu peux activer en production qui permettra un changement de comportement utilisateur ? La question clé est «_Que pourrez vous faire demain que vous ne pouvez pas faire aujourd'hui ?_» Pour identifier si nous sommes ou non en présence d'une expérience (utilisateur) minimum viable (MVE). On peut faire le lien avec les scénarios d'usage des personas. Si je suis en continuous delivery, dès que MVE est terminé, c'est en production direct et donc un MVE est égal à une version. La question «_Comment saurez-vous que c'est un succès ?_» Au niveau MVE sert plus à réajuster les futurs développements qu'à pivoter ou arrêter.

{{% style class="bleu" %}}
_Output : Je connais mes scénarios d'usage mininum (MVE). Je saurai prendre des décisions après activation en production car je connais mes conditions de succès._
{{% /style %}}

{{< img name="8185003116_a1d8be49ff" source="https://www.flickr.com/photos/vialbost/8185003116" >}}

## Etape 5 : La solution

Je charrie un peu en ne parlant de solution qu'à cette étape, mais ce n'est qu'à cette étape que l'on va parler exécution et donc spécifications. Je prends donc mes premiers MVE et je les découpe en User Stories. À quoi cela sert ? À deux choses, mon capitaine :

- Premièrement, cela va permettre d'obtenir du feed-back sur la solution en environnement de non-production au fur et à mesure du développement.
- Deuxièmement, le fait de découper va permettre à l'équipe de mieux piloter son process de développement. Avec des items petits, cela permet de s'apercevoir plus vite des déviations.

Et donc qu'est-ce que c'est une User Story ? Et bien, c'est un morceau fonctionnel d'un MVE. Cela peut être un bout de process, un bout d'écran, une fonctionnalité sans option... Pour savoir si on est dans la User Story ou la tache technique, il suffit de demander au représentant du métier s'il comprend ou non la fiche. Si c'est non, c'est que c'est une tache technique. Personnellement, je considère que si le découpage (slicing pour les intimes) est bien fait, le découpage en taches est inutile. De la forme canonique standard, je ne garde que _'En tant que, je veux que'_. Le _'parce que'_ est porté par le MVE.

{{% style class="bleu" %}}
_Output : J'ai la description de la solution avec critère d'acceptance._
{{% /style %}}

{{< img name="28642020772_aac9123977" source="https://www.flickr.com/photos/p_valdivieso/28642020772" >}}

## Etape 6 : La délivrance

Dès que toutes les User Stories d'un MVE sont terminées, je passe en production. En termes de priorisation, je prends :

- les User Stories de la plus à la moins risquée (hors dépendance)
- les jalons et les MVE de la plus grande valeur à la moins grande valeur. Je ne réponds pas à la même question.

Une fois un MVE mis en production, on mesure la valeur réelle de l'indicateur business de condition de succès. On parle alors de feed-back de production. C'est le terrain qui parle. Plus le produit a un nombre élevé d'utilisateurs, plus la probabilité d'une différence entre feed-backs de non-production (démo) et feed-backs de production est importante. Cette mesure sert ensuite à réajuster le produit.

{{% style class="bleu" %}}
_Output : Mesure réelle de l'indicateur métier à mettre au regard des conditions de succès. Je peux prendre des décisions métier (continuer, pivoter/inflechir, remodeler)._
{{% /style %}}

{{< img name="8390935488_b1c6c2b117" source="https://www.flickr.com/photos/art_roman_p/8390935488" >}}

## Aparté : La minute théologique

La question «_Comment saurez-vous que c'est un succès ?_» permet de connaitre les conditions de succès de la réponse au problème. Je parle alors d'indicateur métier que je retrouve au niveau jalon et MVE. Les critères d'acceptances sont au niveau MVE et User Story pour décrire la conformité de la solution. Je validerai la solution si dans tel scénario d'usage, l'application me permet d'avoir telle expérience utilisateur. Ils peuvent être sous une forme littérale ou sous une forme d'exemple et là, on se rapproche du BDD.

Côté "valeur", je considère que la "Business value" relative ne sert pas à grand chose. Cela peut aider pour de la priorisation Valeur / Effort, mais quelle est la valeur réelle en production d'un item estimé à une valeur relative de 20 ? Et bien je n'en ai aucune idée et je ne vois pas comment on peut savoir. A l'arrivée, on ne peut prendre aucune décision suite au passage en production. J'ai donc complètement arrêté de l'utiliser et je ne garde que l'indicateur métier du jalon et/ou du MVE. Si j'y arrive, j'utilise plutôt la notion de coût du retard (cost of delay pour les intimes).

{{< img name="17773896554_bf0774fc4c" source="https://www.flickr.com/photos/p_valdivieso/17773896554" >}}

## Etape 7, 8, 9, 10... : La routine

Je prends le jalon suivant que j'affine. Je prends le MVE suivant que j'affine. Je prends la User Story suivante que je développe.

A l'arrivée, un product backlog, ça ressemble à ça :

![ProductBacklogExample](/assets/articles/product_backlog/productBacklog.png){: .img-fluid }

## Conclusion : Garder du lien

{{< img name="6888100281_4b7b238dba" source="https://www.flickr.com/photos/p_valdivieso/6888100281" >}}

Le gros gain à travailler ainsi, c'est que vous êtes capable à tout moment de faire le lien entre les problèmes auxquels vous voulez répondre et la solution que vous mettez en face. On résume souvent le product backlog à une description d'une solution et je trouve cela trop limitant. J'ai trop souvent vu une décorrelation entre le business case d'un projet et l'exécution au jour le jour.

{: .rouille }
__Le product backlog, c'est le lien entre stratégie, tactique et exécution.__

---
title: "Dis papa, c'est quoi un product backlog?"
lang: fr
hidden: false
authors:
  - retiere_samuel
tags:
  - produit
  - methodologie
illustration:
  name: 13916708955_b012236d81
  source: https://www.flickr.com/photos/myharries/13916708955
---

Il y a quelques années, le product backlog se résumait pour moi à des user stories regroupées par epic et une forme canonique 'En tant que, je veux que ... parce...'. Aujourd'hui, je pense que passer par cette vision du product backlog freine la maturité. Pour la suite, je décris la construction d'un product backlog plus mature dans l'ordre chronologique.


{% include img.html
    name='4882669123_38df0fcf8e'
    source='https://www.flickr.com/photos/dgeen/4882669123'
%}

## Etape 1 : Réflechis avant de foncer

Au commencement était la phase de compréhension de l'initiative que l'on veut lancer. Chez les english, on va parler de phase d'incenption, d'ideation, whatever... Pour ceux qui suivent, j'ai sauté l'étape où je décide quelle initiative je lance. J'ai maintenant un sponsor, un chef de projet, un chef de produit, et ainsi de suite que l'on va appeler parties prenantes.

Je commence par mettre à plat le problème auquel je veux répondre et définir une idée de solution. On peut partir sur du Lean Canvas, mais je préfère maintenant un canvas plus simple créé par Thierry Montulé :

<p>
  <div class="card-group">
    <div class="card" style="width:50%;">
      <h3 class="card-header">Problème</h3>
      <div class="card-block">
        <p>Quel est le problème ?</p>
        <p>Qui a ce problème ?</p>
        <p>Comment faites vous aujourd'hui ?</p>
        <p>Que pourrez vous faire demain que vous ne pouvez pas faire aujourd'hui ?</p>
        <p>Comment saurez vous que c'est un succès ?</p>
      </div>
    </div>
    <div class="card" style="width:50%;">
      <h3 class="card-header">Solution</h3>
      <div class="card-block">
        <p>Description</p>
        <p>Contraintes</p>
        <p>Critères d'acceptances</p>
        <p>Exemples</p>
      </div>
    </div>
  </div>
</p>


Je garde la partie solution dans le canvas pour ne pas brider et pour la conduite du changement (ne pas dire tout de suite qu'il faut arrêter de partir direct sur la solution). L'important est de savoir à quel problème on répond et je garde ce formalisme pour trois niveaux de granularité. Une fois que j'ai remplis le canvas, j'ai explicité problème, embryon de solution et hypothèses sur lesquelles reposent mon initiative. Ensuite, on dérisque au besoin certaines questions/hypothèses par des interviews, études de marché...


{% include img.html
    name='19869181208_15677d3cb7'
    source='https://www.flickr.com/photos/p_valdivieso/19869181208'
%}

## Etape 2 : Le jalonnement

L'initiative parait faire du sens à savoir que je sais à quel problème je réponds, j'ai un embryon de solution viable et j'ai levé certaines hypothèses. Je vais maintenant passer un premier tamis de découpage et identifier les grosses patates que j'appelle jalon et les mettre dans l'ordre. Pour cela, je pars souvent sur l'innovation game 'remember the future' sachant que l'on peut faire sans. À quoi sert cette étape ? À affiner pour ne pas partir sur un effet tunnel d'un an et à comprendre ce qui apporte le plus de valeur. Il y a une autre raison qui est lié au budget et au staffing. J'essaie d'identifier des jalons de 1 à 3 mois qui permettent de faire de l'allocation de ressources de type budget glissant (cf beyond budgeting) et aussi de garder une équipe sur un sujet pour quelque temps pour gérer la montée en compétences. À la fin de cette étape, j'ai découpé mon initiative en une poignée de jalons. La question 'Comment saurez-vous que c'est un succès ?' Du canvas au niveau jalon aide à savoir si on doit ou non continuer à allouer du budget.


{% include img.html
    name='8599735985_0f513948a1'
    source='https://www.flickr.com/photos/p_valdivieso/8599735985'
%}

## Etape 3 : L'expérience utilisateur

Je prends les premiers jalons et je zoome. Je ne vais pas produire du logiciel pendant 3 mois et livrer à la fin. Sans continuous delivery point de salut. Et donc comment je fais pour livrer au fur et à mesure ? Et bien qu'est-ce que tu peux activer en production qui permettra un changement de comportement utilisateur ? La question clé est 'Que pourrez vous faire demain que vous ne pouvez pas faire aujourd'hui ?' Pour identifier si nous sommes ou non en présence d'une expérience (utilisateur) minimum viable (MVE). On peut faire le lien avec les scénarios d'usage des personas. Si je suis en continuous delivery, dès que MVE est terminé, c'est en production direct et donc un MVE est égal à une version. La question 'Comment saurez-vous que c'est un succès ?' Au niveau MVE sert plus à réajuster les futurs développements qu'à pivoter ou arrêter.

Je ne parle plus de produit minimum viable (MVP) car j'ai récemment eu le cas sur la refonte du site de mon assurance d'un produit minimum qui ne m'a permis aucune expérience utilisateur. Je pouvais voir mon contrat et mes coordonnées, mais pas mon sinistre en cours. J'ai dû envoyer un mail pour avoir les informations dont j'avais besoin.


{% include img.html
    name='8185003116_a1d8be49ff'
    source='https://www.flickr.com/photos/vialbost/8185003116'
%}

## Etape 4 : La solution

Je charrie un peu en ne parlant de solution qu'à cette étape, mais ce n'est qu'à cette étape que l'on va parler exécution et donc spécifications. Je prends donc mes premiers MVE et je les découpe en user stories. À quoi cela sert ? À deux choses, mon capitaine :

- Premièrement, cela va permettre d'obtenir du feed-back sur la solution en environnement de non-production au fur et à mesure du développement.
- Deuxièmement, le fait de découper va permettre à l'équipe de mieux piloter son process de développement. Avec des items petits, cela permet de s'apercevoir plus vite des déviations.

Et donc qu'est-ce que c'est une user story ? Et bien, c'est un morceau fonctionnel d'un MVE. Cela peut être un bout de process, un bout d'écran, une fonctionnalité sans option... Pour savoir si on est dans la user story ou la tache technique, il suffit de demander au business s'il comprend ou non la fiche. Si c'est non, c'est que c'est une tache technique. Personnellement, je considère que si le découpage (slicing pour les intimes) est bien fait, le découpage en taches est inutile. De la forme canonique standard, je ne garde que 'En tant que, je veux que'. Le 'parce que' est porté par le MVE.


{% include img.html
    name='8390935488_b1c6c2b117'
    source='https://www.flickr.com/photos/art_roman_p/8390935488'
%}

## Aparté : La minute théologique

La question 'Comment saurez-vous que c'est un succès ?' permet de connaitre les conditions de succès de la réponse au problème. Je parle alors d'indicateur métier que je retrouve au niveau jalon et MVE. Les critères d'acceptances sont au niveau MVE et user story pour décrire la conformité de la solution. Je validerai la solution si dans tel scénario d'usage, l'application me permet d'avoir telle expérience utilisateur. Ils peuvent être sous une forme littérale ou sous une forme d'exemple et là, on se rapproche du BDD.


{% include img.html
    name='28642020772_aac9123977'
    source='https://www.flickr.com/photos/p_valdivieso/28642020772'
%}

## Etape 5 : La délivrance

Dès que toutes les user stories d'un MVE sont terminées, je passe en production. En termes de priorisation, je prends :

- les user stories de la plus à la moins risquée (hors dépendance)
- les jalons et les MVE de la plus grande valeur à la moins grande valeur. Je ne réponds pas à la même question.

Une fois un MVE mis en production, on mesure la valeur réelle de l'indicateur business de condition de succès. On parle alors de feed-back de production. C'est le terrain qui parle. Plus le produit a un nombre élevé d'utilisateurs, plus la probabilité d'une différence entre feed-backs de non-production (démo) et feed-backs de production est importante. Cette mesure sert ensuite à réajuster le produit.


{% include img.html
    name='17773896554_bf0774fc4c'
    source='https://www.flickr.com/photos/p_valdivieso/17773896554'
%}

## Etape 6, 7, 8, 9, 10... : La routine

Je prends le jalon suivant que j'affine. Je prends le MVE suivant que j'affine. Je prends la user story suivante que je développe.

<p>
  <div class="card-group">
    <div class="card" style="width:33%;">
        <p>Jalon1</p>
        <p> </p>
        <p> </p>
        <p> </p>
        <p> </p>
        <p>Jalon2</p>
        <p> </p>
        <p> </p>  
    </div>
    <div class="card" style="width:33%;">
        <p>MVP 1.1</p>
        <p></p>
        <p></p>
        <p>MVP 1.2</p>
        <p></p>
        <p>MVP 2.1</p>
        <p>MVP 2.2</p>
        <p>MVP 2.3</p>  
    </div>    
    <div class="card" style="width:33%;">
        <p>US 1.1.1</p>
        <p>US 1.1.2</p>
        <p>US 1.1.3</p>
        <p>US 1.2.1</p>
        <p>US 1.2.2</p>
        <p></p>
        <p></p>
        <p></p>  
    </div>    
  </div>
</p>

{% include img.html
    name='6888100281_4b7b238dba'
    source='https://www.flickr.com/photos/p_valdivieso/6888100281'
%}

## Conclusion : Garder du lien

Le gros gain à travailler ainsi, c'est que vous êtes capable à tout moment de faire le lien entre les problèmes auxquels vous voulez répondre et la solution que vous mettez en face. On résume souvent le product backlog à une description d'une solution et je trouve cela trop limitant. J'ai trop souvent vu une décorrelation entre le business case d'un projet et l'exécution au jour le jour. Le product backlog, c'est le lien entre stratégie, tactique et exécution.

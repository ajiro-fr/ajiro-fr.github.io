---
title: "L'agilité à l'échelle : Du nécessaire changement de paradigme"
lang: fr
hidden: false
authors:
  - retiere_samuel
tags:
  - agile
  - scaling
categories:
  - organisation
illustration:
  name: 14519782386_808b0c6faf
  source: https://www.flickr.com/photos/infomastern/14519782386
---

Il était une fois l'agilité et il reste maintenant à rajouter l'échelle. De quoi je parle ? Et bien de la suite logique ou habituelle des 'transformations' agile. Qui dit transformation agile dit en général que l'on a commencé à faire du Scrum ou du Kanban avec des équipes de développement logiciel. En résumé on a touché le bas de la structure. Passer à l'échelle veut dire que l'on essaie d'aller jusqu'au bout de la logique et donc d'avoir une organisation agile. Et c'est là que ça frotte.... Pour la petite histoire, la référence de l'organisation agile est le livre de Jezz Humble 'Lean Enterprise'.

{% include img.html
    name='15411263129_a4fb7ddb20'
    source='https://www.flickr.com/photos/alainalele/15411263129/'
%}

Je vais essayer de reprendre l'histoire depuis le début. A l'origine était Scrum et l'équipe auto organisée. Dans la pratique, qu'est ce que cela veut dire et qu'avons nous fait ? Et bien nous avons travaillé avec les équipes de développement pour les aider à avoir un focus plus client que composant technique. En faisant cela, nous avons cassé silos style maitrise d'oeuvre d'un côté et maitrise d'ouvrage de l'autre. Nous avons aussi remis le client au centre de l'équipe. C'est un premier pas, mais pas nécessairement le dernier pas. Je vais essayer de décrire cela sachant que certaines organisations ont sauté des étapes. Je prends le pire comme fil rouge.


{% include img.html
    name='15508356005_3579948e23'
    source='https://www.flickr.com/photos/moisemarcouxchabot/15508356005/'
%}

Nous avons créé des équipes applicatives agile. Nous avons réussi à casser l'approche hamburger par couche technique sur l'application, mais avons nous réussi à faire cela au niveau de l'écosystème applicatif. Je reformule en prenant un exemple : Est ce que mon flux de valeur est agile sachant que j'ai 3 équipes applicatives agiles sur une chaine de 3 applications ? Je vais éviter d'employer le mot agile car trop flou. Je devrais plutôt parler de fluidité de la priorisation métier, de passage de relais et donc de rapidité du delivery. Quel est le but de l'agilité à l'échelle ? Et bien c'est comme au niveau application, mais cette fois ci au niveau chaine de valeur : Faire les bonnes choses et faire bien les choses (Cf Karl Scotland alias mon idole). Finalement c'est simple (mais pas nécessairement facile) l'agilité à l'échelle, on fait au niveau de la structure ce que l'on fait au niveau bas. PERDU.


{% include img.html
    name='4602805654_7cdf999e2d'
    source='https://www.flickr.com/photos/cdevers/4602805654/'
%}

Et c'est là ou on en arrive à un changement qui peut paraitre léger, mais qui a en fait de gros impacts. Pour passer à l'échelle, <b>il est nécessaire de passer d'un focus applicatif à un focus chaine de valeur</b>. Cela étant dit, qu'est ce que cela signifie :


{% include img.html
    name='453962889_3505296728'
    source='https://www.flickr.com/photos/thomashawk/453962889'
%}

- Fini les équipes organisées autour d'une application et bienvenue aux équipes par flux de valeur. Et donc je mets dans la même équipe toutes les personnes nécessaires à la réalisation d'un besoin métier de A à Z. Et si pour se faire je dois modifier 3 applications et bien je modifierai 3 applications. Par défaut, je mets les équipes en parallèle. Si la chaine de valeur est longue, je peux être amené à mettre plusieurs équipes en série. Au niveau impact, j'ai constaté que basculer d'une organisation centrée application à une organisation centrée flux de valeur permet de diviser le Time to market par 4. Et là point de magie, on diminue le besoin de coordination entre équipes en passant à de la coordination intra équipes qui est donc plus rapide. Au passage, on augmente la capacité de priorisation métier en limitant le phénomène de 'Je dois donner à manger à cette équipe applicative'. Pour la digression 'Tactique théorique' du jour, l'armée considère que la prise de décision prend 3 fois plus de temps à chaque échelon hiérarchique remonté. Si je remonte 3 niveaux au dessus de l'équipe pour pouvoir prendre une décision, je mets 9 fois plus de temps que si la décision est prise par l'équipe.


{% include img.html
    name='8355768344_b8bb922ed8'
    source='https://www.flickr.com/photos/marcpoppleton/8355768344'
%}

- Au niveau du code proprement dit, nous passons à du 'collective code ownership'. Le code appartient à tout le monde et à personne (et surtout pas à un application manager). On doit au maximum limiter la notion d'épaulette. Si tu n'as pas tel grade, tu n'as pas ton mot à dire. C'est un peu comme une dance en groupe, la partition n'est belle que si tout le monde joue la même. D'ou la nécessité de mettre en place des cordes de rappel pour assurer la cohérence de l'ensemble que l'on appelle tantôt chapter, tantôt guilde, tantôt communauté de pratiques. Je ne vais pas expliquer les définitions et subtilités, allez voir en détail si vous êtes motivés. Indirectement je reparle d'applications, mais je suis cette fois ci sur un focus secondaire, le focus premier étant la qualité et la rapidité du delivery.


{% include img.html
    name='11314752595_1c1b9fec55'
    source='https://www.flickr.com/photos/oscarvelazquez/11314752595/'
%}

- Quand on arrive à ce stade, tout le monde est d'accord sur l'intérêt de l'agilité à l'échelle et c'est la que l'élastique se tend 'On peut supprimer le référentiel applicatif' avec retour arrière. Et mais on en a besoin. Ah bon, mais pourquoi ? Comment on saura qui est responsable de l'incident de production ? Et bien c'est simple, la notion d'incident applicatif est remplacé par la notion d'incident sur un business process. Tout le monde est responsabilisé sur ce que fait l'utilisateur avec l'application. Ah oui, mais comment on fait si une application est mutualisée et que la base de données tombe ? Et bien tout le monde s'y met. C'est le point qui peut être plus dur qu'avant. Par contre si on perd d'un côté, on gagne beaucoup de l'autre à savoir que l'on n'a plus le problème du business process qui est planté car il y a un problème entre deux applications et que cela n'est pas prévu dans les contrats de service des 2 applications. Il est nécessaire de passer d'un support applicatif à un support par flux de valeur.


{% include img.html
    name='51412155_edf0145f98'
    source='https://www.flickr.com/photos/gigijin/51412155/'
%}

- Et l'on en revient à la finance. Mais comment on suit l'imputation des budgétaires de l'infrastructure ? Et bien je n'ai même pas envie de répondre. Prends les clés de répartition que tu veux, cela reste de la 'monnaie de singe' et de la répartition interne. Et si tu veux trouvoir des solutions, [Beyond Budgeting] est ton ami (ça y est, j'ai réussi à le placer).


{% include img.html
    name='3638337309_2bb473f604'
    source='https://www.flickr.com/photos/jeremybrooks/3638337309/'
%}

- Et comment tu fais les contrôles de sécurité des applications ? Ah là cela devient une question intéressante (surtout que je n'y avais pas pensé la première fois que l'on me l'a posé) et je vais botter en touche. De ce que je vois actuellement, nous voyons de plus en plus émerger des architectures orientées service. Et c'est là que l'on parle de DDD. Si on pousse la logique jusqu'au bout, on a des domaines fonctionnels qui exposent des services à l'extérieur avec chaque domaine qui a sa propre base de données. Et donc c'est quoi une application ? De plus en plus, je pense qu'il est nécessaire de descendre d'un cran et de se focaliser plus sur domaines / sous domaines et du ownership de ces dits domaines. Et là j'en reviens au besoin de cohérence de l'architecture logicielle avec des mécanismes tels que des domain owners ou des chapters (cf spotify) par groupe de domaines. J'ouvre une porte que je ne vais pas refermer malgré le vent car le sujet du DDD me parait mouvant en ce moment. J'en veux pour preuve que les coachs en parlent au café et que la discussion n'est pas finie à l'issue.


{% include img.html
    name='15256094337_22a1de924a'
    source='https://www.flickr.com/photos/walterpro/15256094337'
%}

Comme je suis parti d'un point pour bien digresser par la suite, je vais essayer de faire une mini conclusion :

Pourquoi tenter l'agilité à l'échelle ?

_Pour donner plus de flexibilité de priorisation au business et pour accélérer la vitesse de delivery. Pour résumer, pour faire du meilleur business._

Qu'est ce que cela implique ?

_Passer d'une organisation centrée application à une organisation flux de valeur. Cela implique une remise en cause profonde d'un grand nombre de process. Il ne faut pas sous estimer ce point, cela passera par se redemander pourquoi on fait les choses. Au passage et vous l'aurez sûrement deviné sans que je l'écrive, cela veut aussi dire remodeler la structure managériale et repartir sur un autre axe._

Vous êtes maintenant prévenus de ce que cela implique. Pour finir sur une note positive : si l'effort est certain, l'impact sur l'efficience de l'organisation est énorme. Il s'agit bien d'innovation managériale avec un fort caractère différentiant.

[Beyond Budgeting]: /books/implementing_beyond_budgeting-bogsnes_bjarte.html

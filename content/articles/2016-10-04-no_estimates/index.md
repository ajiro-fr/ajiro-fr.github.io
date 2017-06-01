---
aliases: /articles/2016/10/04/no_estimates
date: 2016-10-04
title: "#NoEstimates, concentrons nous sur l'essentiel"
lang: fr
hidden: false
authors:
  - retiere_samuel
tags:
  - pensée
  - methodologie
categories:
  - craft
illustration:
  name: 4671006254_b646ef737c
  source: https://flic.kr/p/87L8qA
---

J'ai récemment été contacté pour faire une session sur #NoEstimates. Finalement cela ne s'est pas fait, mais comme j'ai réfléchi un peu au sujet je me dis que cela pourrait être utile de dépasser le cadre d'un pitch et en faire un post.

{{< img name="1482020719_35efb6dff2" source="https://flic.kr/p/3fXK8n" >}}

> Un jour dans une entreprise...
>
> IT
> : Alors nous avons estimé la prochaine fonctionnalité à 15
>
> Métier
> : Ah oui, c'est cher. Vous ne pourriez pas faire un petit effort et la faire pour 12
>
> IT
> : C'est ce que l'on a estimé pendant notre réunion d'estimation. Avec les abaques, cela donne 15
>
> Métier
> : Faites voir vos abaques. Vous pouvez sûrement réduire les tests. C'est une fonctionnalité simple donc pas dur à tester.
>
> ...

Si vous participez à ce type de discussion, c'est que vous êtes improductifs (ou du moins partiellement). Le problème de cet exemple n'est pas de savoir si c'est 12 ou 15, le problème c'est que cette discussion est orientée coût et non valeur. C'est le cœur du #NoEstimates dont le nom complet est #NoEstimates, focus on what matters. Ce mouvement de pensée vise à se focaliser sur les impacts et non les livrables.

Dans la suite de l'article, je vais plus donner ma vision du #NoEstimates qu'un consensus de la communauté. Je prends ce parti car il n'existe pour moi pas de consensus. Il y a beau y avoir le livre de Vasco Duarte, il a été écrit après les premiers échanges sur twitter. Il suffit de taper #NoEstimates sur google pour s'en rendre compte. Ce que je raconte ci dessous provient des expériences que nous (les équipes que je coache et moi) avons fait avant et après un workshop avec Vasco qui nous a permis d'affiner le modèle.

{{< img name="1150163_3d5d68c150" source="https://www.flickr.com/photos/friskodude/1150163" >}}

L'idée est de ne pas rentrer dans un débat théologique pour savoir s'il faut estimer ou non. Je laisse cela à la communauté PMP. La question est de savoir à quelle question on répond et quelle décision on veut prendre avec. Malheureusement, je constate plus que l'on estime parce qu'il faut estimer. J'en veux la preuve que quand je demande aux équipes que je coache pourquoi elles estiment, elles me répondent par du 'quoi' style faire une roadmap et qu'elles sont très moyennment capables de savoir pourquoi.

{{< img name="4319185932_09a9650629" source="https://www.flickr.com/photos/reymondgalvez/4319185932/" >}}

Pour faire simple, on estime quand on veut prendre une décision. Globalement, je vois quasi toujours les mêmes thèmes :
- Est ce que cela est rentable de développer une fonctionnalité au regard du gain attendu ?

Réponse à la question
Il y a un sous entendu dans la question à savoir que vous ne connaissez pas juste la solution attendue mais le problème auquel vous pensez répondre. Le temps du verbe est important, vous avez une hypothèse que vous souhaitez valider. Vous allez me dire que cela est assez classique et que c'est du pur calcul de ROI. Très bien, mais est ce que vous passez réellement du temps à comprendre la valeur que vous allez apporter (cf changement de l'expérience utilisateur) et donc découper le besoin métier ou est ce que vous vous focalisez sur le découpage de la solution ? #NoEstimates part plutôt du principe qu'il faut se focaliser sur le 1 et moins le 2. De quelles pratiques parle t on ? C'est un découpage classique de backlog à base d'initiatives business (Dealing with Darwin de Geoffrey Moore), puis de Minimum Viable Product MVP (Running Lean de Ash Maurya) et enfin de User Stories (Story mapping de Jeff Patton).

{{< img name="3374429207_3a027120a2" source="https://www.flickr.com/photos/_mll_/3374429207" >}}

Une fois que vous avez bien bossé sur votre backlog, vous avez une bonne idée de ce que vous allez devoir faire et pourquoi. Rester plus qu'à faire la roadmap ah ah ah. Je ne fais pas mon chieur en demandant à quoi sert une roadamp. J'ai donc besoin d'estimer mon backlog et là il y a deux cas :

- Vous avez des UX designer, Business analyst, whatever... de folie et vous arrivez à des tailles de User Stories proches. A quoi bon estimer ? La je peux répondre : A rien. On fait de l'estimation implicite et on part du principe que toutes les User Stories ont un poids de 1. Et là on fait du #NoEstimates. Un des prérequis pour aller jusqu'au bout du modèle est d'avoir des tailles de User Stories proches. Et plus vous avez de volume, moins c'est utile d'estimer.
- Vous avez des spécialistes du 'je ne peux pas découper plus' et donc pas de bol pour vous, vous allez devoir utiliser de l'estimation relative. Personnellement, je pense que le tailles de T-Shirt suffisent pour répondre à la question initiale de rentabilité business. Ca fait longtemps que je n'ai plus touché un jeu de planning poker.

{{< img name="1774508061_71cf004a17" source="https://www.flickr.com/photos/benalford/1774508061" >}}

Pour la petite histoire un jeu de planning poker à la mode #NoEstimates c'est juste trois cartes :

- 1 : Classique
- TFB : Too fucking big. On ne prend pas ton item, il est trop gros et doit être redécoupé.
- NFC : No fucking clue. En fait je n'ai pas compris ce que tu veux faire. En général c'est que le besoin mérite d'être reclarifié.

{{< img name="5936033927_b60c89ce75" source="https://www.flickr.com/photos/yuchao_li/5936033927" >}}

Ensuite, il reste à donner de la visibilité pour être capable de donner une date d'atterrissage. Ca peut servir pour la gestion du changement... Et là c'est relativement simple. On compte le nombre d'items (User Story) qui sorte du système (done) sur une période de temps. C'est de la vélocité simplifiée. On projette ensuite en utilisant la moyenne plus ou moins l'écart type. Cela donne une plage de dates ou une plage de coûts. Un système est considéré comme instable à partir du moment ou 3 points sont en dehors du tunnel moyenne plus ou moins l'écart type ou 5 points de suite qui montre que l'on va sortir. Dans ce cas, on a 2 cas possibles :

- On recalibre le système en prenant une moyenne sur les derniers points car on utilise une moyenne trop vieille. Cela peut aussi arriver que l'on enlève un point non pertinent qui fausse les données. Exemple : une société transfère ses employés de l'ouest à l'est de Paris. Les premières semaines post déménagement sont de moindre productivité liées à un évènement ponctuel. Vous me direz que cela peut durer plus que cela. Affaire à suivre.. Si on retrouve de la stabilité, on peut continuer à donner de la visibilité.
- On n'arrive pas à recalibrer car la vélocité est trop volatile. J'ai déjà vu du simple au triple en fonction des sprints. Le système est dit instable. Vous NE DEVEZ PLUS donner de roadmap où sinon je vous range dans la catégorie vendeur de tapis. Vous devez attendre que votre système se restabilise.

{{< img name="4546017269_ddac803025" source="https://www.flickr.com/photos/toolstop/4546017269" >}}

Vous pouvez me rappelez dans ce que je viens de décrire à quel moment on a passé du temps à faire des sessions d'estimation. JAMAIS JAMAIS JAMAIS. C'est souvent ce qui est vendu en gain de la 'méthode'. Personnellement je considère que c'est vrai mais pas le critère discriminant. On a surtout refocalisé les discussions sur le plus important à savoir : pourquoi on fait les choses? à quoi ça sert? qu'est ce que le client fera avec les produit? Il y a beaucoup moins de gâchis avec des fonctionnalités inutiles.

Et le meilleur pour la fin et ceux qui suivent. Vous me direz qu'en agile on ne découpe pas dès le début tout le backlog. C'est un faux problème, on donne juste un ordre d'idée du nombre de User Stories. Et il manque la deuxième question sur le pourquoi des estimations. La voila : est ce que je vais avoir la rolls royce ou la deux chevaux ? C'est plus lié au niveau de fonctionnalités que l'on va mettre. Est ce que je vais être différenciant sur le marché ou est ce que je vais me contenter d'être à la parité ? Cela ne change rien à ce que l'on en fait derrière par rapport à la première question. GOTO Réponse à la question


---
Sources:

- [NoEstimate]


[NoEstimate]: /books/no_estimate-duarte_vasco

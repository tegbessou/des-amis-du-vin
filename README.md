# Des amis, du vin
![CI](https://github.com/tegbessou/skeleton/workflows/CI/badge.svg)
## Distillation document (in French)
Une bouteille est constituée d'un nom, d'un nom de domaine, un type (blanc, rouge, rosé, champagne, pétillant rouge, pétillant blanc), une année, un cépage, un pays, un prix, une note, une remarque, d'une photo et la date d'ajout.

Il faut pouvoir créer une bouteille avec toutes les informations.
Il faut pouvoir modifier une bouteille.
Il faut pouvoir supprimer une bouteille.
On doit pouvoir rechercher les bouteilles par : nom du vin, nom du domaine, type, date d'ajout/de dégustation, année du vin, par note.
Une fois qu'on a ajouté une bouteille il faut pouvoir inviter à déguster la bouteille et le faire soit même.
Quand on créé une dégustation on ajoute automatiquement le créateur en tant que participant, on doit renseigner pour la dégustation une bouteille.
Pour ajouter un participant à une dégustation il faut pouvoir le chercher par son email:
    Si l'utilisateur est déjà inscrit alors on lui envoie une notification sur son téléphone via firebase en plus d'un mail
    Sinon on doit générer un lien pour pouvoir télécharger l'application, l'envoyer à la personne et à la fin il a quand même sa notification
Un participant à un email, un nom et prénom
Rajouter une gestion de notification d'invitation à une dégustations.
Il faut pouvoir les lister par participant, les lires, les accepter et les refuser.

Il faut pouvoir déguster du vin la dégustation se déroule en 3 étapes :
- L'oeil : dans laquelle on doit renseigner, la limpidité (limpide, opalescente, voilée, floue, trouble), la brillance (étincelante, éclatante, brillante, lumineuse, terne), intensité des couleurs (pâle, claire, satane, intense), couleur (si rouge: pourpre, cerise, grenat, tuilé, ambré, si rosé: pivoine, framboise, saumon, vieux rose, pelure d'oignon, si blanc: vert, blanc, doré, paille, roux), larmes (visqueuse, grasses, épaisses, roulantes, fluides), observations
- Le nez : impression (complexe, franc, simple, douteux, défauts), intensité (intime, ouvert, aromatique, discret fermé), arôme (fruité, florale, végétal boisée, épicée, empyreumatique, animale, balsamique, minérales), des observations.
- La bouche : le sucre noté sur une échelle (sirupeux, liquoreux, moelleux, doux, sec) si c'est un vin sucré, alcool noté sur une échelle (alcooleux, capiteux, gras, généreux, faible), acide (nerveuse, peintre, vite, fraîche, molle), tanin (âpre, chargé, charpenté, fader, lisse) si vin rouge, matière (massive, corpulace, étoffée, légère, fluette), finale (rémanente, persistance, langue, développée, courte)

Il faut pouvoir supprimé une dégustation.
Il faut pouvoir partager une dégustation.

### Functionnal Test
We use Behat. To run behat use:
<pre>
  make behat
</pre>

### Unit Test
We use PHPUnit. To run unit test use:
<pre>
  make unit-test
</pre>

### Makefile
To see all usefull command run:
<pre>
  make help
</pre>

## Database management
We used a dump to reload faster our database. To load your database use:
<pre>
  make db-load-fixtures
</pre>
### Update dump
If you add some migration or some fixtures, you have to update your dump with:
<pre>
   make db-reload-fixtures
</pre>
### PhpMyAdmin
To access PhpMyAdmin use: https://pma.your-host.docker

- Login: root
- Password: root

## Quality of our code
We have some quality tools and to run all this tools, you can use:
<pre>
  make code-quality
</pre>
In our quality tools you can find:
### Security checker of symfony
This tools check, if you have vulnerability in your dependencies
<pre>
  make security-checker
</pre>
### PHPmd
<pre>
  make phpmd
</pre>
### Composer unused
This tools allows you to check if you have unused dependencies
<pre>
  make composer-unused
</pre>
### Yaml Linter
<pre>
  make yaml-linter
</pre>
### Xliff Linter
<pre>
  make xliff-linter
</pre>
### Twig Linter
<pre>
  make twig-linter
</pre>
### Container Linter
<pre>
  make container-linter
</pre>
### PHPStan
<pre>
  make phpstan
</pre>
### CS Fixer
This tools check if you have error in your coding styles.

To show this error use:
<pre>
  make cs
</pre>

To fix this errors use:
<pre>
  make cs-fix
</pre>
### Validate database schema
This Symfony command check if your database schema is coherent with your entities annotation
<pre>
  make db-validate
</pre>

## Mailcatcher
If your local app send mail, your mail will be catched by the mailcatcher.
To see this mail go to: https://mailcatcher.du-vin-des-amis.docker

## Naming rules
- Entity class shouldn't have suffix
- Value object class shouldn't have suffix
- Enum class shouldn't have suffix
- Event class shouldn't have suffix
- Event listener class shouldn't have suffix
- Exception class should have suffix
- Service class shouldn't have suffix
- Repository class should have suffix
- Command/Query class should have suffix
- Command/Query handler class should have suffix

## Value object rule
- Id method should be named value
- Value object should be immutable

## Architecture rules
- Each Domain should have its own folder
- Each Entity is responsible for it's state so they must recreate the value object of a property when they must be changed
- Domain never should have a dependency with another domain except Shared, to avoid to have dependency between domain
- Transaction for CommandHandler are started in the MessengerCommandBus
- Each Exception in Adapter should be logged
- An Adapter should always dispatch a command or a query
- An Aggregate should only be modified by the Aggregate himself children Entity should be modified by the Aggregate
- An Aggregate should only have one repository
- An Aggregate and Entity should always be created by a factory (method or class)
- An Aggregate or Entity action (domain method) should always dispatch an event
- All Aggregate attributes except boolean should be a ValueObject
- EventListener should always be in the Application or Infrastructure layer
- All Aggregate and Entity should have a created at, created by, updated at and updated by
- All Aggregate and Entity method should be Unit tested
- All Adapter (Contract or Driving) method should be Contract or Driving tested
- If we need to read information from Aggregate without Aggregate we should use a read model
- To request an external api we should use a Repository, then an adapter is created to use this repository and use a translator
to transform this data to our domain
- One resource class by operation

![img.png](resources/v1-domain.png)
![img.png](resources/v2-domain.png)

## Refactoring DDD
All value object should be recreated in the entity and not in their own code

Put doctrine entity in infrastructure and seperate domain entity from doctrine entity

Reflect to put specification for Invitation Status

Normaliser delete instead of remove

### Refactoring tasting

When you accept to taste a bottle this bottle should be duplicate in your bottle list flaggued has invited to degust

### Refactoring user

Add friend system + invitation....

User context is responsible to send notification when invitation is sent

Extract it in a microservice and a new project

Add a fullname to user

## Refactoring tech
Setup phparkitect pour les règles de nommages

Separate each bounded context in microservice

Reflect to add test on command handler and query handler => Va être nécessaire use kernel test case

Renommer les tests d'adapter en test d'intégration => a vérifier selon la pyramide des tests

Refactorer le AuthenticateUserCommandHandler pour utiliser le pattern Stratégie au lieu d'appeler chaque méthode. => minor

Dans les tests revoir la façon de clear les datas existantes pour les tests AdapterTest (tous les tests) => high

## TODO
- [X] When user is created dispatch an event then we need to update information in tasting if it's email is present
  - [X] Invite a guest which do not exist in our system and test it
    - [X] Create the invitation and the read model should be created with an empty name for target (change read model to accept this)
    - [X] When a user is created with this email, I should to update invitation model to this name

- [ ] Normalise from/owner (id, email, name, fullName...) and target (id, email, name, fullName...)
- [ ] Look no participant mention in tasting
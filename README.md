# Todo

- terraform code: die data sources auflösen und stattdessen die outputs im 'network' modul referenzieren,<https://www.terraform.io/docs/modules/usage.html>
- netzwerk neu aufbauen mit TF
- bestehende Instanz snapshotten
- EC2 Instanz in passender Größe aus Snapshot neu erzeugen (Region beachten wg Reserved Instance!)
- Docker installieren auf EC2 instanz
- EFS bereitstellen in Docker Host
- Migration Owncloud auf Host -> Nextcloud in Container auf Host durchführen
- Alte Owncloud Umgebung deaktivieren
- (Ggf noch opensprinkler webservice ebenfalls in eigenen Container auslagern so dass Host wirklich leergeräumt ist bis auf docker-daemon)

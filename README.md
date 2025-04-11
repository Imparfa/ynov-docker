# Docker MySQL Lab

Ce projet initialise une base de données MySQL dans un conteneur Docker avec un script SQL de création automatique.

## Structure du projet

```
docker-mysql-lab/
├── Dockerfile
├── .env
├── init.sql
└── README.md
```

## Variables d’environnement (.env)

```env
MYSQL_ROOT_PASSWORD=root
MYSQL_DATABASE=ynov
```

## Étapes de construction et d’exécution (PowerShell - Windows)

### 1. Construction de l’image Docker

```powershell
docker build -t mysql-lab .
```

### 2. Lancement du conteneur

```powershell
docker run -d --name mysql-lab-container `
  --env-file .env `
  -p 3306:3306 `
  mysql-lab
```

### 3. Connexion à MySQL dans le conteneur

```powershell
docker exec -it mysql-lab-container mysql -uroot -p
```

Entrez ensuite le mot de passe `root`.

### 4. Vérifications SQL

```sql
SHOW DATABASES;
USE ynov;
SHOW TABLES;
```

## Nettoyage

Pour arrêter et supprimer le conteneur :

```powershell
docker stop mysql-lab-container
docker rm mysql-lab-container
```

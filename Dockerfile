FROM mysql:8

# Utilisation du fichier .env automatiquement par docker-compose ou à l'exécution
ENV MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD}
ENV MYSQL_DATABASE=${MYSQL_DATABASE}

# Copie du script d'initialisation dans le dossier prévu par MySQL
COPY init.sql /docker-entrypoint-initdb.d/

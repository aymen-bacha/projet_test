# Étape 1 : choisir l'image de base
FROM python:3.11-slim

# Étape 2 : installer git et PostgreSQL client
RUN apt-get update && apt-get install -y git libpq-dev && rm -rf /var/lib/apt/lists/*

# Étape 3 : installer DBT et l'adaptateur PostgreSQL
RUN pip install --no-cache-dir dbt-core dbt-postgres

# Étape 4 : créer un dossier pour le projet
WORKDIR /app

# Étape 5 : cloner le repo depuis GitHub
ARG GITHUB_REPO
RUN git clone $GITHUB_REPO .

# Étape 6 : exposer le répertoire de travail pour DBT
VOLUME ["/app"]

# Étape 7 : commande par défaut : exécuter DBT
CMD ["dbt", "run", "--profiles-dir", "/app/profiles"]


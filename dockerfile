FROM python:3.10-slim

# Installer les dépendances système
RUN apt-get update && apt-get install -y \
    tesseract-ocr \
    tesseract-ocr-fra \
    libgl1 \
    libglib2.0-0 \
    libsm6 \
    libxrender1 \
    libxext6

# Créer le répertoire de l'application
WORKDIR /app

# Copier les fichiers
COPY . .

# Installer les dépendances Python
RUN pip install --no-cache-dir -r requirements.txt

# Configurer les permissions
RUN mkdir -p /tmp/uploads && chmod -R a+rwx /tmp/uploads

# Commande de démarrage
CMD ["gunicorn", "--worker-tmp-dir", "/dev/shm", "--workers", "2", "--threads", "4", "--worker-class", "gthread", "wsgi:app"]

#!/bin/bash

# Mettre à jour le système
apt-get update

# Installer Tesseract OCR et la langue française
apt-get install -y tesseract-ocr
apt-get install -y tesseract-ocr-fra

# Installer les dépendances système pour PyMuPDF
apt-get install -y libgl1 libglib2.0-0

# Créer le dossier temporaire pour les uploads
mkdir -p /tmp/uploads
chmod -R a+rwx /tmp/uploads

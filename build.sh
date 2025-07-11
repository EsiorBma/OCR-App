#!/bin/bash

# Mettre à jour le système
apt-get update -y

# Installer Tesseract OCR et la langue française
apt-get install -y tesseract-ocr
apt-get install -y tesseract-ocr-fra

# Installer les dépendances système
apt-get install -y libgl1 libglib2.0-0 libsm6 libxrender1 libxext6

# Créer le dossier temporaire pour les uploads
mkdir -p /tmp/uploads
chmod -R a+rwx /tmp/uploads

# Vérifier l'installation de Tesseract
echo "Vérification de Tesseract:"
which tesseract
tesseract --version

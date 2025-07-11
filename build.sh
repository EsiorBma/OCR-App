#!/bin/bash

# Mettre à jour le système
sudo apt-get update

# Installer Tesseract OCR et la langue française
sudo apt-get install -y tesseract-ocr
sudo apt-get install -y tesseract-ocr-fra

# Installer les dépendances système pour PyMuPDF
sudo apt-get install -y libgl1 libglib2.0-0

# Créer le dossier temporaire pour les uploads
mkdir -p /tmp/uploads
chmod -R a+rwx /tmp/uploads

#!/bin/bash

# Installer Tesseract OCR et la langue française
sudo apt-get update
sudo apt-get install -y tesseract-ocr
sudo apt-get install -y tesseract-ocr-fra

# Créer le dossier temporaire pour les uploads
mkdir -p /tmp/uploads
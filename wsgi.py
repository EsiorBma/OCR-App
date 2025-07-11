from app import app
# Initialiser Tesseract au démarrage
try:
    import pytesseract
    pytesseract.pytesseract.tesseract_cmd = '/usr/bin/tesseract'
    print("Tesseract initialisé avec succès dans wsgi.py")
except Exception as e:
    print(f"Erreur d'initialisation Tesseract dans wsgi.py: {str(e)}")
if __name__ == "__main__":
    app.run()

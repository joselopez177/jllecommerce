#!/usr/bin/env bash
# Instalar dependencias desde requirements.txt

set -o errexit

pip install -r requirements.txt

# Crear archivos estáticos
python manage.py collectstatic --no-input

# Ejecutar migraciones de la base de datos
python manage.py migrate
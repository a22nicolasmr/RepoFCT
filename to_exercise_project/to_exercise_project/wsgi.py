import os
from django.core.wsgi import get_wsgi_application

# Aquí debe ser 'to_exercise_project.settings'
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'to_exercise_project.settings')

application = get_wsgi_application()

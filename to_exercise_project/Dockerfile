# Usa una imagen base oficial de Python
FROM python:3.11

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /code

# Copia el archivo de requisitos al contenedor
COPY requirements.txt .

# Instala las dependencias del proyecto
RUN pip install --no-cache-dir -r requirements.txt

# Copia el código del proyecto al directorio de trabajo en el contenedor
COPY . /code/

# Ejecuta el comando para crear un nuevo proyecto Django
# RUN django-admin startproject password_generator .
RUN pip install gunicorn

# Expone el puerto que Django usa por defecto
EXPOSE 8000

# Comando por defecto para ejecutar cuando se inicie el contenedor
CMD ["gunicorn", "--bind", "0.0.0.0:${PORT}", "to_exercise_project.wsgi:application"]


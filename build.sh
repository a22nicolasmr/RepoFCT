#!/usr/bin/env bash
# Exit on error
set -o errexit

export PYTHONPATH=$PYTHONPATH:/opt/render/project/src/to_exercise_project

# Install dependencies
pip install -r requirements.txt

# Apply any outstanding database migrations
python to_exercise_project/manage.py migrate

# Collect static files
python to_exercise_project/manage.py collectstatic --no-input

# Start the Django development server on the correct host and port
# gunicorn to_exercise_project.wsgi:application --bind 0.0.0.0:$PORT

gunicorn to_exercise_project.to_exercise_project.wsgi:application --bind 0.0.0.0:$PORT
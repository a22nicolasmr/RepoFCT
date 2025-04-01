#!/usr/bin/env bash
# Exit on error
set -o errexit

# Install dependencies
pip install -r requirements.txt

# Apply any outstanding database migrations
python to_exercise_project/manage.py migrate

# Collect static files
python to_exercise_project/manage.py collectstatic --no-input

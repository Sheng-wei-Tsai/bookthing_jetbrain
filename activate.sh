#!/bin/bash

# check if venv exists, if not create it
if [ ! -d "venv" ]; then
    echo "creating virtual environment..."
    python -m venv venv
fi

# activate virtual environment
source venv/bin/activate

# install requirements if needed
if [ -f "requirements.txt" ]; then
    pip install -r requirements.txt
fi

# print python version and location
echo "python is running from: $(which python)"
echo "python version: $(python --version)"

# change to BookThing directory if it exists
if [ -d "BookThing" ]; then
    cd BookThing
fi

# start django server
python manage.py runserver 8001
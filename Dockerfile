# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the dependencies file to the working directory
COPY requirements.txt .

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Copy the rest of the application's code
COPY . .

# Command to run the application using Gunicorn, listening on the port provided by Cloud Run
CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 --timeout 0 app:app

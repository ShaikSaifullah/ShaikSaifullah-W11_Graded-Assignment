# Use the official Python base image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Copy the local requirements file to the container
COPY requirements.txt .

# Install application dependencies
RUN pip install -r requirements.txt

# Copy the local script to the container
COPY app.py .

#Copy all folders
COPY code_model_training /app/code_model_training
COPY data /app/data
COPY model /app/model
COPY ms /app/ms
COPY tests /app/ms

# Define the command to run when the container starts
CMD ["python3", "app.py"]

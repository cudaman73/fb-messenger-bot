 # Use an official Python runtime as the base image
 FROM python:3.9

 # Set the working directory in the container
 WORKDIR /app

 # Copy the requirements file to the working directory
 COPY requirements.txt .

 # Install the Python dependencies
 RUN pip install --no-cache-dir -r requirements.txt

 # Copy the application code to the working directory
 COPY . .

 # Specify the command to run your Flask app
 CMD ["gunicorn", "--bind", "0.0.0.0:8000", "app:app"]
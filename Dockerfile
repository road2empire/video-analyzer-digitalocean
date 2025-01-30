# Use an official Python image
FROM python:3.10

# Install system dependencies
RUN apt-get update && apt-get install -y ffmpeg

# Set the working directory
WORKDIR /app

# Copy application files
COPY . /app

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Command to run your application (modify if necessary)
CMD ["gunicorn", "your_project.wsgi:application", "--bind", "0.0.0.0:8080"]

# Use an official Python base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the entire application folder into the container
COPY ./Computer-Systems-hw02 /app

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port that the application will run on
EXPOSE 8000

# Command to run the application
CMD ["python", "main.py"]

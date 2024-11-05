# Use the official Python 3 image as the base image
FROM python:3

# Set the working directory to /app
WORKDIR /app

# Copy the requirements.txt file to the working directory
COPY requirements.txt .
COPY test.db .

# Install the dependencies using pip install -r requirements.txt
RUN pip install -r requirements.txt

# Copy the rest of the application files to the working directory
COPY . .

# Set the entry point to run vulnerable-flask-app-linux.py
ENTRYPOINT ["python", "vulnerable-flask-app-linux.py"]

# Expose port 8081 and 8001
EXPOSE 8081
EXPOSE 8001


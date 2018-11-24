#Much of this is borrowed from or inspired by
#   the Docker Getting Started Tutorial
# Use an official Python runtime as a parent image
FROM python:3.5-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app
# Copy the admin directory contents into the container at /app
COPY ../../../admin /app

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME World

# Run app.py when the container launches
CMD ["python", "app.py"]

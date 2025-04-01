# Use the official Python slim image
FROM python:3.9-slim

# Install OS-level dependencies required for Pillow
RUN apt-get update && apt-get install -y \
    libjpeg-dev \
    zlib1g-dev \
    && rm -rf /var/lib/apt/lists/*

# Upgrade pip, setuptools, and wheel to the latest versions
RUN pip install --upgrade pip setuptools wheel

# Copy requirements.txt and install Python packages
COPY requirements.txt .
RUN python -m pip install -r requirements.txt

# Set the working directory for the application code
WORKDIR /app
COPY . /app

# Run main.py when the container launches
CMD ["python", "main.py"]

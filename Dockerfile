# Use Python base image
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /app

# Copy only necessary files
COPY requirements.txt /app/requirements.txt
COPY text-analysis3.py /app/text-analysis3.py
COPY reviews /app/reviews

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port
EXPOSE 8080

# Command to run the application
CMD ["python", "text-analysis3.py"]

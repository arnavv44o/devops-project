# Base image for Python application
FROM python:3.9

# Create a working directory
WORKDIR /app

# Copy project files
COPY requirements.txt .

# Install dependencies
RUN pip install -r requirements.txt

# Copy application code
COPY . .

# Expose port for Flask app (default)
EXPOSE 5000

# Run the Gunicorn application server
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]

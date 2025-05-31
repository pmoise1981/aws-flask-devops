FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Install requirements
RUN pip install --no-cache-dir -r requirements.txt gunicorn

# Expose port 80 (must match Dockerrun.aws.json)
EXPOSE 80

# Start app with Gunicorn
CMD ["gunicorn", "--bind", "0.0.0.0:80", "app:app"]


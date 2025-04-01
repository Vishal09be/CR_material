# Use official lightweight Python image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy app files into the container
COPY . .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5000 for Flask
EXPOSE 5000

# Avoid Python buffering in logs
ENV PYTHONUNBUFFERED=1

# Start the Flask app
CMD ["python", "app.py"]

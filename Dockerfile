# Dockerfile
# Use the official Python image as the base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the script to the working directory
COPY simple_server.py .

# Expose the port the server runs on
EXPOSE 8081

# Command to run the server
CMD ["python", "simple_server.py"]


#command
curl -X POST http://localhost:8080/financial -H "Content-Type: application/json" -d '{"transactionId":"12345"}'

FROM python:3.10-alpine

# Set the working directory
WORKDIR /app

# Install dependencies
COPY ./requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copy the scripts to the folder
COPY ./src ./src

# Start the server
CMD ["uvicorn", "src.main:app", "--host", "0.0.0.0", "--port", "80", "--reload"]
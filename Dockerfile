# Stage 1: Build Stage
# We use a full-featured Python image to build dependencies.
FROM python:3.12 AS builder

# Install system dependencies needed to compile the Python packages.
# These libraries are required for the build process.
RUN apt-get update && apt-get install -y \
    libmariadb-dev \
    build-essential \
    pkg-config \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /app

# Copy the requirements file and install dependencies in a virtual environment.
COPY requirements.txt .
RUN python -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"
RUN pip install --no-cache-dir -r requirements.txt

# ---

# Stage 2: Final (Runtime) Stage
# We use a minimal, slim image for the final container.
FROM python:3.12-slim

# Install the runtime system library in the final image.
# This library is needed for the application to run.
RUN apt-get update && apt-get install -y \
    libmariadb3 \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /app

# Copy the virtual environment and application code from the builder stage.
COPY --from=builder /opt/venv /opt/venv
COPY . .

# Set the PATH to include the virtual environment's binaries.
ENV PATH="/opt/venv/bin:$PATH"

# Expose the port
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]



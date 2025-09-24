#Two-Tier Flask Application with Docker Compose
This project is a simple, yet robust, two-tier web application designed to demonstrate containerization using Docker and Docker Compose. It consists of a frontend web application built with Flask and a backend database powered by MySQL.

The application allows users to submit and view messages, showcasing a complete flow of data from the frontend, through the application layer, and into persistent storage in the database.

#🛠️ Tech Stack & Tools
Backend Framework: Flask (Python) - A lightweight and flexible web framework used to handle server-side logic and render HTML templates.

Database: MySQL - A powerful relational database for storing application data.

Containerization: Docker - Used to package the application and database into portable and isolated containers.

Orchestration: Docker Compose - Simplifies the management of multi-container applications by defining and running all services in a single YAML file.

#⚙️ Key Architectural Concepts
Two-Tier Architecture: The application logic and data storage are separated into two distinct layers, which improves maintainability and scalability.

Containerization: Both services run in separate containers, ensuring a consistent and isolated environment across different systems.

Environment Variables: Sensitive information like database credentials are not hardcoded but managed via environment variables, enhancing security.

Service Healthchecks: Docker Compose is configured with healthchecks to ensure the database is fully ready before the Flask application starts, preventing common connection errors.

#🚀 How to Run the Project
Follow these simple steps to get the application up and running on your local machine or a Linux server.

Prerequisites
You need to have Docker and Docker Compose installed on your system.

#Steps to Deploy
Clone the Repository:

git clone [https://github.com/Fahad-developer/Docker-Two-Tier-Application.git](https://github.com/Fahad-developer/Docker-Two-Tier-Application.git)
cd Docker-Two-Tier-Application

#Build and Run the Containers:
Docker Compose will automatically build the Flask application image and pull the MySQL image, then start both containers in the correct order.

docker-compose up --build -d

Note: The -d flag runs the containers in detached mode (in the background).

#Access the Application:
Once the containers are up and running, you can access the application in your web browser.

For local deployment: http://localhost:5000

For cloud server (e.g., EC2): http://<your-server-public-ip-address>:5000

#🧹 Cleaning Up
To stop and remove all containers, networks, and volumes created by Docker Compose, run the following command from the project directory:

docker-compose down -v

The -v flag also removes the volumes, ensuring that the database data is completely cleared.*

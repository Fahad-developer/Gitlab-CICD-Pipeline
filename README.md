
---

## 🚀 Two-Tier Flask Application with Docker Compose

This project is a **two-tier web application** built using **Docker** and **Docker Compose**.
It consists of a **Flask web app (frontend)** and a **MySQL database (backend)**, each running in separate containers.

The application allows users to **submit and view messages**.
All messages are stored in the database, demonstrating the complete data flow of the project.

---

### 🛠️ Tech Stack & Tools

**Backend Framework:** **Flask (Python)**
A lightweight web framework that handles HTTP requests and renders HTML pages.

**Database:** **MySQL**
A powerful database used to permanently store all messages.

**Containerization:** **Docker**
Used to package the application and database into isolated containers, ensuring a consistent environment everywhere.

**Orchestration:** **Docker Compose**
Used to run and manage multiple containers together and connect them easily.

---

### ⚙️ Key Architectural Concepts

* **Two-Tier Architecture:**
  The application and database are separated into two layers, keeping the code clean and modular.

* **Containerization:**
  Both services run inside containers, providing a consistent runtime environment across different systems.

* **Environment Variables:**
  For security, sensitive data (like database passwords) is stored in environment variables instead of hardcoding in the code.

* **Service Healthchecks:**
  Docker Compose is configured so that the Flask app only starts after the MySQL database is fully ready.

---

### 🚀 How to Run the Project

To run this project, just follow these simple steps 👇

#### **Prerequisites**

Make sure **Docker** and **Docker Compose** are installed on your system.

#### **Steps to Deploy**

1. **Clone the Repository:**

   ```bash
   git clone https://github.com/Fahad-developer/Docker-Two-Tier-Application.git
   cd Docker-Two-Tier-Application
   ```

2. **Build and Run the Containers:**
   This command builds and runs all containers in the background.

   ```bash
   docker-compose up --build -d
   ```

3. **Access the Application:**
   Once containers are running, open the app in your browser:

   * **Local Deployment:** [http://localhost:5000](http://localhost:5000)
   * **Cloud Server (e.g., EC2):** `http://<your-server-ip>:5000`

---

### 🧹 Cleaning Up

To stop and remove all containers (along with volumes), run:

```bash
docker-compose down -v
```

---

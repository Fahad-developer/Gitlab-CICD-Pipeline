---

## 🚀 Two-Tier Flask Application with Docker Compose

This project is a **two-tier web application** built using **Docker** and **Docker Compose**.
It consists of a **Flask web app (frontend)** and a **MySQL database (backend)**, each running in separate containers.

The application allows users to **submit and view messages**.
All messages are stored in the database, demonstrating the complete **data flow** of the project.

---

### 🛠️ Tech Stack & Tools

* **Backend Framework:** **Flask (Python)** — A lightweight web framework that handles HTTP requests and renders HTML pages.
* **Database:** **MySQL** — A reliable and powerful database that permanently stores all messages.
* **Containerization:** **Docker** — Used to package the app and database into isolated containers for consistency.
* **Orchestration:** **Docker Compose** — Used to run and manage multiple containers and connect them easily.
* **CI/CD Automation:** **GitLab CI/CD** — Used to automate the build, test, and deployment process.

---

### ⚙️ Key Architectural Concepts

* **Two-Tier Architecture:** Application and database are separated into two independent layers for better modularity.
* **Containerization:** Both services run inside Docker containers to ensure the same environment everywhere.
* **Environment Variables:** Sensitive data (like DB passwords) is stored securely using environment variables.
* **Service Healthchecks:** Docker Compose ensures that the Flask app starts only after MySQL is ready.
* **CI/CD Pipeline:** Automated build and deployment using GitLab CI/CD for continuous integration and delivery.

---

### ⚙️ GitLab CI/CD Integration

A **`.gitlab-ci.yml`** pipeline is configured to automate the entire workflow.
It performs the following stages:

1. **Build Stage:** Builds the Flask and MySQL Docker images.
2. **Test Stage:** Runs unit tests and checks application functionality.
3. **Deploy Stage:** Deploys the containers using Docker Compose automatically after successful build and test stages.

**GitLab Runner** is configured on the host machine to execute pipeline jobs — it pulls the repository, builds the images, and runs deployment steps.

This setup ensures smooth, automated deployment and reduces manual errors.

---

### 🚀 How to Run the Project

#### **Prerequisites**

Make sure **Docker**, **Docker Compose**, and (optionally) **GitLab Runner** are installed on your system.

#### **Steps to Deploy**

1. **Clone the Repository:**

   ```bash
   git clone https://github.com/Fahad-developer/Docker-Two-Tier-Application.git
   cd Docker-Two-Tier-Application
   ```

2. **Build and Run the Containers:**

   ```bash
   docker-compose up --build -d
   ```

3. **Access the Application:**

   * **Local Deployment:** [http://localhost:5000](http://localhost:5000)
   * **Cloud Server (e.g., EC2):** `http://<your-server-ip>:5000`

---

### 🧹 Cleaning Up

To stop and remove all containers (including volumes), run:

```bash
docker-compose down -v
```

---

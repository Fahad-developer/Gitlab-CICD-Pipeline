Two-Tier Flask Application with Docker Compose 🚀
Yeh project ek two-tier web application hai, jise Docker aur Docker Compose ka istemal karke banaya gaya hai. Isme ek Flask web app (frontend) aur ek MySQL database (backend) alag-alag containers mein chalte hain.

Is application ki madad se, users messages daal sakte hain aur unhe dekh bhi sakte hain. Saare messages database mein store hote hain, jo is project ke poore data flow ko dikhata hai.

🛠️ Tech Stack & Tools
Backend Framework: Flask (Python)
Ek lightweight web framework jo HTTP requests ko handle karta hai aur HTML pages ko render karta hai.

Database: MySQL
Ek powerful database jo saare messages ko permanently store karta hai.

Containerization: Docker
Application aur database ko alag-alag, isolated containers mein package karne ke liye istemal hota hai.

Orchestration: Docker Compose
Iska upyog ek se zyada containers ko ek saath chalane aur unhe jod ne ke liye kiya jaata hai.

⚙️ Key Architectural Concepts
Two-Tier Architecture: Application aur database ko do alag-alag layers mein baanta gaya hai, jis se code saaf rehta hai.

Containerization: Dono services containers mein chalte hain, jo har jagah ek jaisa environment dete hain.

Environment Variables: Security ke liye, sensitive information (jaise database passwords) ko code mein nahi, balki environment variables mein store kiya gaya hai.

Service Healthchecks: Docker Compose ko is tarah se configure kiya gaya hai ki Flask app tabhi start ho jab MySQL database poori tarah se ready ho.

🚀 How to Run the Project
Is project ko chalane ke liye, bas in simple steps ko follow karein.

Prerequisites
Aapke system par Docker aur Docker Compose installed hona zaroori hai.

Steps to Deploy
Clone the Repository:

git clone [https://github.com/Fahad-developer/Docker-Two-Tier-Application.git](https://github.com/Fahad-developer/Docker-Two-Tier-Application.git)
cd Docker-Two-Tier-Application

Build and Run the Containers:
Yeh command containers ko build aur run karegi.

docker-compose up --build -d

Access the Application:
Containers chalne ke baad, aap browser mein app ko access kar sakte hain.

Local deployment: http://localhost:5000

Cloud server (e.g., EC2): http://<your-server-public-ip-address>:5000

🧹 Cleaning Up
Containers ko rokne aur unhe hatane ke liye yeh command use karein:

docker-compose down -v

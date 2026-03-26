# 🚀 DevOps Assignment – TUMMOC

**Candidate:** Rishikesh Kourav


---

# 📌 Overview

This project demonstrates a **minimal DevOps pipeline implementation** for a sample web application, addressing a scenario where no DevOps practices existed.

---


# 📂 Project Structure

```bash
tummoc-devops-assignment/
│
├── app/                  
├── Dockerfile
├── docker-compose.yml
│
├── .github/workflows/
│   └── ci-cd.yml
│
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
│
├── monitoring/
│   ├── prometheus.yml
│   └── grafana/
│       └── datasource.yml
│
├── README.md
```

---

# 🔁 CI/CD Pipeline

Implemented using **GitHub Actions**.

### Pipeline Steps:

* Code checkout
* Dependency installation
* Lint check (basic)
* Test execution
* Docker image build
* Container deployment
* Health check validation
* Push image to Docker Hub

### Trigger:

* Runs automatically on push to `main` branch

---

# 🐳 Docker Setup

### Build Image

```bash
docker build -t tummoc-assignment .
```

### Run Container

```bash
docker run -d -p 3000:3000 tummoc-assignment
```

---

# 🧩 Docker Compose (Multi-Service Setup)

```bash
docker-compose up --build
```

### Services:

* App → http://localhost:3000
* Prometheus → http://localhost:9090
* Grafana → http://localhost:3001

---

# ☁️ Infrastructure as Code (Terraform)

Terraform is used to provision a basic AWS EC2 instance.

### Steps:

```bash
cd terraform
terraform init
terraform plan
terraform apply
```

### Resources Created:

* EC2 Instance (t2.micro)
* Region: ap-south-1

---

# 📊 Monitoring Setup

Monitoring is implemented using:

### 🔹 Prometheus

* Collects application metrics
* Scrapes `/metrics` endpoint

### 🔹 Grafana

* Visualizes metrics
* Connected to Prometheus as datasource

---


# 🐳 Docker Hub

Docker image is available at:

```
docker pull rishikesh991/tummoc-assignment:v1
```

---

### Strengths:

* Strong understanding of CI/CD workflows
* Hands-on experience with Docker and Terraform
* Ability to design end-to-end DevOps pipeline


# ✅ Conclusion

This project successfully transforms a manually deployed application into a **basic DevOps-enabled system**, improving:

* Automation
* Scalability
* Observability
* Reliability

---

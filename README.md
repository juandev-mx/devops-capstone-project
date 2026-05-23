# DevOps Capstone Template



[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
[![Python 3.9](https://img.shields.io/badge/Python-3.9-green.svg)](https://shields.io/)


![IBM](https://img.shields.io/badge/IBM-052FAD?style=for-the-badge&logo=ibm&logoColor=white)
![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![Kubernetes](https://img.shields.io/badge/Kubernetes-326CE5?style=for-the-badge&logo=kubernetes&logoColor=white)
![Tekton](https://img.shields.io/badge/Tekton-FF6C37?style=for-the-badge&logo=tekton&logoColor=white)
![GitHub%20Actions](https://img.shields.io/badge/GitHub_Actions-2088FF?style=for-the-badge&logo=githubactions&logoColor=white)


![Estado de la construcción](https://github.com/juandev-mx/devops-capstone-project/actions/workflows/ci-build.yaml/badge.# Account Management Microservice — DevOps Capstone Project

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
[![Python 3.9](https://img.shields.io/badge/Python-3.9-green.svg)](https://shields.io/)
![IBM](https://img.shields.io/badge/IBM-052FAD?style=for-the-badge&logo=ibm&logoColor=white)
![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![Kubernetes](https://img.shields.io/badge/Kubernetes-326CE5?style=for-the-badge&logo=kubernetes&logoColor=white)
![Tekton](https://img.shields.io/badge/Tekton-FF6C37?style=for-the-badge&logo=tekton&logoColor=white)
![GitHub Actions](https://img.shields.io/badge/GitHub_Actions-2088FF?style=for-the-badge&logo=githubactions&logoColor=white)

![Build Status](https://github.com/juandev-mx/devops-capstone-project/actions/workflows/ci-build.yaml/badge.svg)

This repository contains a robust, cloud-native RESTful microservice engineered for user account management. Developed as the final Capstone project for the **IBM DevOps and Software Engineering Professional Certificate**, this repository showcases the practical application of modern software engineering methodologies, automation, and continuous delivery cultures.

The core objective was to transform a legacy code template into a production-ready system by implementing behavior-driven and test-driven development (TDD/BDD), end-to-end CI/CD automation pipelines, and container orchestration.

---

## 🚀 Key Features

*   **Production-Ready RESTful API:** Implemented secure, standard CRUD (Create, Read, Update, Delete) and resource listing endpoints.
*   **Test-Driven Development (TDD):** Maintained a strict >95% code coverage threshold utilizing PyTest and robust testing factories.
*   **Microservices Architecture:** Designed following clean Model-View-Controller (MVC) patterns using Flask and PostgreSQL.
*   **Infrastructure Automation:** Built and configured cloud-native automation flows for continuous integration and zero-downtime deployments.

---

## 🛠️ Tech Stack

*   **Backend:** Python 3.9, Flask (REST API)
*   **Database:** PostgreSQL
*   **Containerization:** Docker & Docker Compose
*   **Container Orchestration:** Kubernetes (K3d / Red Hat OpenShift)
*   **CI/CD Pipelines:** Tekton / GitHub Actions
*   **Testing & Quality Assurance:** PyTest, Coverage.py, Flake8 (Linting)

---

## 📦 Project Structure

The microservice follows a modular layout designed for high maintainability and horizontal scalability:

```text
├── service/                  <- Main microservice package
│   ├── common/               <- Global logging and error handlers
│   ├── config.py             <- Flask environment configurations
│   ├── models.py             <- Core business logic and database persistence (ORM)
│   └── routes.py             <- REST API routing and controller logic
├── tests/                    <- Automated testing suite
│   ├── factories.py          <- Synthetic data factories for test cases
│   ├── test_cli_commands.py  <- Command-line interface tests
│   ├── test_models.py        <- Data layer unit tests
│   └── test_routes.py        <- API routing integration tests
└── setup.cfg                 <- Code linting and static analysis settings
```

---

## 📊 Data Model

The persistence layer manages user accounts through the `Account` model with the following schema:


| Name | Type | Optional |
|------|------|----------|
| id | Integer| False |
| name | String(64) | False |
| email | String(64) | False |
| address | String(256) | False |
| phone_number | String(32) | True |
| date_joined | Date | False |

---

## ⚙️ CI/CD Workflow Automation

The software delivery lifecycle is fully automated to guarantee secure, frequent, and stable releases:

1.  **Continuous Integration (CI):** Every code push or Pull Request automatically triggers an isolation pipeline. This step runs the code formatter, checks static code quality via linters, and executes the entire test suite to ensure no regressions drop the project coverage below 95%.
2.  **Continuous Delivery (CD):** Leveraging **Tekton / GitHub Actions**, a verified codebase triggers an automated build that generates a production-optimized Docker image, pushes it to a secure image registry, and rolls out a rolling update into the Kubernetes cluster.

---

## 💻 Local Development & Testing

To replicate the local environment and test this microservice, ensure you have **Docker Desktop** installed.

### 1. Spin up the Relational Database
Start the PostgreSQL containerized database instance by running:
```bash
make db
```

### 2. Run the Automated Test Suite
Execute the full testing framework and generate coverage metrics:
```bash
make test
```

### 3. Local Kubernetes Simulation (Optional)
This repository includes automation to bootstrap a lightweight local K3d Kubernetes cluster and run Tekton tasks locally:
```bash
make cluster
make tekton
make clustertasks
```

---

## 🧑‍💻 Author

*   **Juan Carlos Reynoso Zúñiga** — *DevOps & Software Engineer*
    *   [LinkedIn Profile](https://www.linkedin.com/in/jcreynosoz) 
    *   [GitHub Profile](https://github.com/juandev-mx)

---

## 📄 License and Acknowledgments

This project is built upon educational starter code provided by **IBM Corporation (2022)** under the instruction of John Rofrano (Senior Technical Staff Member at IBM Research).
Licensed under the Apache License. See the `LICENSE` file for more details.



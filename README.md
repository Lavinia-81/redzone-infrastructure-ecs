# 🏗️ Redzone Infrastructure — AWS ECS (Terraform)
Terraform • AWS ECS • IAM • VPC • DevOps Infrastructure Module

This repository contains the Terraform configuration for provisioning the Redzone ECS infrastructure on AWS.
It is designed as a clean, modular, and scalable Infrastructure‑as‑Code (IaC) setup suitable for containerized workloads deployed via Amazon ECS.

The project demonstrates core DevOps skills including cloud provisioning, Terraform module structure, backend configuration, and environment‑ready infrastructure definitions.

---

## Overview
This Terraform project provisions the foundational AWS resources required to run workloads on Amazon Elastic Container Service (ECS).

It includes:
- Terraform backend configuration
- AWS provider configuration
- Variables for environment customization
- ECS‑related infrastructure components (depending on your implementation)

This repository is intentionally minimal, focusing on clarity and best practices for IaC.

---

## Components
🔹 backend.tf
Defines the Terraform backend configuration.

Typically includes:
- S3 bucket for remote state
- DynamoDB table for state locking
- Workspace/environment separation

This ensures safe, collaborative infrastructure management.

🔹 providers.tf
Configures the AWS provider and region.

May include:
- AWS provider block
- Required Terraform version

Authentication method (profile, environment variables, IAM role)

🔹 variables.tf
Contains input variables used across the infrastructure.

Examples:
- AWS region
- ECS cluster name
- VPC/subnet IDs

Environment identifiers

🔹 README.md
Documentation for usage, setup, and project purpose.

---

## Technologies Used
Infrastructure
- Terraform (Infrastructure as Code)
- AWS ECS (Elastic Container Service)
- AWS IAM (permissions & roles)
- AWS VPC (networking)
- AWS S3 + DynamoDB (remote state, if configured)

DevOps Concepts
- IaC best practices
- Modular configuration
- Cloud provisioning
- Environment‑based variable management

---

## Project Structure
```
redzone-infrastructure-ecs/
│
├── backend.tf          # Terraform backend configuration
├── providers.tf        # AWS provider setup
├── variables.tf        # Input variables
├── .gitignore          # Local environment exclusions
└── README.md           # Documentation
```

---

## Usage
1. Clone the repository
```
git clone https://github.com/Lavinia-81/redzone-infrastructure-ecs.git
cd redzone-infrastructure-ecs
```

2. Configure variables
Edit *variables.tf* or create a *terraform.tfvars* file:
```
aws_region = "eu-west-2"
environment = "dev"
cluster_name = "redzone-ecs"
```
3. Initialize Terraform
```terraform init```

4. Validate configuration
```terraform validate```

5. Preview changes
```terraform plan```

6. Apply infrastructure
```terraform apply```

---

## Key Concepts Demonstrated
- Terraform backend configuration
- AWS provider setup
- ECS infrastructure provisioning
- Modular IaC design
- Cloud resource automation
- Environment‑based configuration
- GitOps workflow

---

## Purpose of This Project
This repository was created as part of DevOps learning and experimentation.
It demonstrates:
- how to structure Terraform projects
- how to configure AWS providers
- how to prepare infrastructure for ECS workloads
- how to use IaC to manage cloud resources cleanly and professionally

It is an excellent foundation for expanding into full ECS deployments and production‑ready cloud architecture.

---

## Contributions
Contributions are welcome.
Feel free to fork the repository and submit a pull request.

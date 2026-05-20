# DevOps Interview Project 1

## Project Overview

This project demonstrates a complete DevOps workflow using AWS, Terraform, Kubernetes, Helm, Docker, and GitHub Actions.

The application is a simple Flask app deployed automatically to Amazon EKS using a CI/CD pipeline.

---

## Technologies Used

- Python / Flask
- Docker
- Amazon ECR
- Amazon EKS
- Terraform
- Helm
- GitHub Actions
- Kubernetes
- AWS Load Balancer

---

## Architecture

GitHub
GitHub Actions
Docker Build
Amazon ECR
Helm Deployment
Amazon EKS
AWS Load Balancer
Flask Application

---

## Infrastructure

Infrastructure is provisioned using Terraform.

Resources created:

- VPC
- Public & Private Subnets
- NAT Gateway
- EKS Cluster
- Managed Node Group
- ECR Repository

---

## CI/CD Pipeline

The GitHub Actions workflow automatically:

1. Builds the Docker image
2. Pushes the image to Amazon ECR
3. Connects to the EKS cluster
4. Deploys the application using Helm

Workflow file:

.github/workflows/deploy.yml

---


## Deployment

## Provision Infrastructure

cd terraform
terraform init
terraform apply


## Configure kubectl

aws eks update-kubeconfig --region us-east-1 --name my-project-eks


## Deploy with Helm

helm upgrade --install hello-app ./hello-app

---


## Useful Commands

### Check Nodes/Pods/Services

kubectl get nodes
kubectl get pods
kubectl get svc

### Destroy Infrastructure

terraform destroy

---


## Application Test

curl http://<LOADBALANCER_URL>:5000


Expected Output:

Hello DevOps from Flask!

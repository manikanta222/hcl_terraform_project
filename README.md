
# hcl_terraform_project

## Overview
This Terraform project provisions a scalable infrastructure on AWS, including an EKS cluster for hosting backend applications, AWS Cognito for user authentication, and an HTTP API Gateway integrated with Cognito for secure access.

## Deployment Steps

To deploy the infrastructure, follow these steps:

1. **Initialize Terraform**:
terraform init

2. **Plan the resources**:
terraform plan -out=tfplan.out

3. **Apply the configuration**:
terraform apply tfplan.out

## Infrastructure Setup

This setup provisions the following components:

- **EKS Cluster**: Hosts the backend application.
- **AWS Cognito**: Handles user authentication.
- **HTTP API Gateway**: Integrated with Cognito for secure access.

## Deploying Applications on EKS

Once the infrastructure is provisioned, we can deploy a containerized Hello World application on EKS using Kubernetes manifests or Helm charts. To configure K8s CLI to interact with the EKS cluster, run:

aws eks --region us-east-1 update-kubeconfig --name hello-world-cluster

This command updates local Kubernetes configuration to connect to the newly created EKS cluster named `hello-world-cluster`.

**Refer: hcl_terraform_project/k8s/deployment.yaml then**

Apply the deployment:

kubectl apply -f deployment.yaml

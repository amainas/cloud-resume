# Cloud Resume Project

This project is a serverless cloud-based resume website designed to demonstrate
hands-on experience with AWS, Infrastructure as Code, and CI/CD automation.

The application consists of a static frontend hosted on Amazon S3 and a fully
serverless backend that tracks website visitors using AWS Lambda and DynamoDB.
All infrastructure is provisioned using Terraform.

---

## Architecture Overview

Frontend:
- Static website hosted on Amazon S3
- HTML, CSS, and JavaScript
- JavaScript fetches visitor count from a backend API

Backend:
- AWS Lambda (Python) for visitor count logic
- Amazon DynamoDB for persistent storage
- Amazon API Gateway (HTTP API) exposing a public endpoint

Infrastructure:
- Terraform for provisioning all AWS resources
- AWS CLI for local execution

CI/CD:
- GitHub Actions for automated frontend deployment to S3

---

## Request Flow

Browser  
→ S3 Static Website  
→ API Gateway (GET /visitor)  
→ AWS Lambda  
→ DynamoDB  

---

## Technology Stack

AWS Services:
- Amazon S3
- AWS Lambda
- Amazon DynamoDB
- Amazon API Gateway
- AWS IAM

Infrastructure and Automation:
- Terraform
- GitHub Actions
- AWS CLI

Languages:
- HTML, CSS, JavaScript
- Python

---

## Infrastructure as Code

All infrastructure is defined using Terraform and located in the `terraform/`
directory. Resources include:

- S3 bucket configured for static website hosting
- DynamoDB table with on-demand billing
- Lambda function with least-privilege IAM role
- API Gateway HTTP API with Lambda proxy integration

Terraform is executed locally using AWS CLI credentials.

---

## Security Considerations

- AWS credentials are never stored in the repository
- GitHub Secrets are used for CI/CD authentication
- IAM roles follow the principle of least privilege
- Terraform state files are excluded from version control

---

## CI/CD Pipeline

A GitHub Actions workflow automatically deploys frontend changes to Amazon S3.

Behavior:
- Triggered on push to the main branch
- Syncs frontend files to the S3 bucket using AWS CLI
- Ensures consistent and repeatable deployments

---

## Cost Optimization

The project is designed to remain within AWS Free Tier limits.

- Fully serverless architecture
- No EC2 instances
- No load balancers
- No NAT gateways

Support for a custom domain and CloudFront distribution is intentionally omitted
to minimize operational costs during development.

---

## Possible Extensions

- Add CloudFront and custom domain with HTTPS
- Use Terraform remote state with S3 and DynamoDB locking
- Add monitoring with CloudWatch
- Extend CI/CD to include Terraform plan and apply
- Implement an Azure-based version of the project

---

## Repository Structure

cloud-resume/
├── terraform/
│ ├── provider.tf
│ ├── s3.tf
│ ├── dynamodb.tf
│ ├── iam.tf
│ ├── lambda.tf
│ ├── apigw.tf
│ ├── outputs.tf
│ └── lambda/
│ └── visitor_counter.py
├── frontend/
│ ├── index.html
│ ├── style.css
│ └── script.js
└── README.md


---

## Author

Antonis  
Cloud / Systems Engineer


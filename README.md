## Terraform + Docker: Infrastructure as Code (IaC)
### Project Overview
Use of terraform to automate the provisioning of a Docker container running Nginx.
### Tools & Technologies Used
Terraform – Infrastructure as Code (IaC)
Docker – Container management

### Step-by-Step Execution
##### Writing the Terraform Code
Created main.tf to define infrastructure.
Used Terraform’s Docker provider to pull the image and create a container.
##### Running Terraform Commands
Initialized Terraform: terraform init
Planned the setup: terraform plan
Applied changes: terraform apply -auto-approve | tee execution.log
Verified the running container: docker ps
Checked the Nginx response: curl http://localhost:8080
##### Managing Terraform State
Listed Terraform-managed resources: terraform state list
Ensured state files were properly stored.
##### Destroying Infrastructure
Removed all Terraform resources: terraform destroy -auto-approve

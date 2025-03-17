AskMe chatbot using Terraform into Azure Cloud via GitHub actions 

<img src="assets/LLM_Workflow.drawio.png" width="800" height="300">

Infrastructure Resources :

1. Virtual Private Cloud (VPC)
2. Virtual Network (VNet)
3. Subnet (1 subnet)
4. Security Groups
5. Azure Blob Storage
6. Azure Virtual Machine (VM)
7. Azure Container Registry (ACR)
8. Azure Container App (for the frontend)
9. Azure Monitoring & Logging (Azure Monitor, Log Analytics)
10. Azure Key Vault (for security and secrets management)
11. Deployment Pipeline
12. GitHub Actions (for CI/CD)
13. DockerHub (for container image storage)
14. Terraform (for Infrastructure as Code deployment)

Useful Commands :
Here’s a list of useful Terraform commands along with their short descriptions:

Initialization & Setup

terraform init → Initializes Terraform in the current directory.
terraform validate → Checks for syntax and configuration errors.
terraform fmt → Formats Terraform code for readability.
terraform providers → Lists required providers and versions.

Planning & Applying

terraform plan → Shows what changes Terraform will apply.
terraform plan -var-file="terraform.tfvars" → Uses a specific variable file.
terraform apply → Applies the Terraform configuration.
terraform apply -auto-approve → Applies changes without confirmation.

Destroying Resources
terraform destroy → Deletes all resources managed by Terraform.
terraform destroy -auto-approve → Destroys without asking for confirmation.

Managing State
terraform state list → Lists all resources in the state file.
terraform state show <resource> → Shows details of a specific resource.
terraform state rm <resource> → Removes a resource from the state (without destroying it).
terraform state mv <old> <new> → Moves a resource to a new name.

Working with Outputs & Variables
terraform output → Displays all output values.
terraform output <name> → Shows a specific output variable.
terraform console → Opens an interactive shell to evaluate expressions.

Managing Workspaces
terraform workspace list → Lists available workspaces.
terraform workspace show → Shows the current workspace.
terraform workspace new <name> → Creates a new workspace.
terraform workspace select <name> → Switches to a different workspace.

Importing Existing Resources
terraform import <resource_type>.<name> <resource_id> → Imports an existing resource into Terraform.
Debugging & Logs
TF_LOG=DEBUG terraform apply → Enables detailed debugging logs.
terraform graph → Generates a visual representation of dependencies.

Remote Backend & Locking
terraform login → Logs into Terraform Cloud.
terraform force-unlock <lock_id> → Manually unlocks a locked state file.

Shortcuts & Best Practices
terraform apply -var="key=value" → Passes a variable inline.
terraform apply -var-file="secrets.tfvars" → Uses a specific .tfvars file.
terraform output -json → Displays output values in JSON format.
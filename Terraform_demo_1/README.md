# Terraform Local File Example

This repository demonstrates how to use Terraform to create a local file on your system.

## Overview

The example creates a file named `languages.txt` with the content "We love programming!" using Terraform's `local_file` resource.

## Prerequisites

- Terraform is installed on your system
- Basic understanding of Terraform concepts

## Usage

1. Clone this repository or create the Terraform configuration file:

```bash
mkdir ~/terraform_code
cd ~/terraform_code
sudo nano local.tf
```

2. Add the following Terraform configuration to `local.tf`:

```hcl
resource "local_file" "languages" {
    filename = "languages.txt"
    content = "We love programming!"
}
```

3. Initialize Terraform:

```bash
terraform init
```

4. Review the execution plan:

```bash
terraform plan
```

5. Apply the configuration:

```bash
terraform apply
```
(Type `yes` when prompted)

6. Verify the created file:

```bash
cat languages.txt
```

7. (Optional) View the details of the created resource:

```bash
terraform show
```

## File Structure

After running the commands, your directory will contain:
- `local.tf` - Terraform configuration file
- `languages.txt` - Created file with your content
- `.terraform/` - Terraform provider plugins
- `.terraform.lock.hcl` - Dependency lock file
- `terraform.tfstate` - State file

## Notes

- The `local_file` resource automatically sets file permissions to 0777
- Each resource type expects specific arguments (e.g., `local_file` requires `filename` and `content`)
- Always review the plan before applying changes

## Clean Up

To remove the created resources:

```bash
terraform destroy
```

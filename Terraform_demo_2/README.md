
# Terraform Local File Demo

This is a simple Terraform project that uses the `local_file` provider to create two text files on your local system:  
- `databases.txt`
- `devops.txt`

Each file is populated with basic content as a demonstration of using Terraform for local file provisioning.

##  Project Structure

```

Terraform\_demo\_2/
├── databases.txt
├── devops.txt
├── local.tf
├── terraform.tfstate
└── .terraform.lock.hcl

````

##  Prerequisites

- [Terraform](https://developer.hashicorp.com/terraform/downloads) (v1.0 or higher)
- A Unix-like environment (Linux, macOS, WSL)
- Basic understanding of Terraform

##  What This Project Does

This project will:
- Initialize the Terraform environment.
- Create `databases.txt` with the content:  
  `"We love databases!"`
- Create `devops.txt` with the content:  
  `"We love devops!"`

##  Setup & Usage

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/Terraform_demo_2.git
cd Terraform_demo_2
````

### 2. Initialize Terraform

```bash
terraform init
```

### 3. Review the Execution Plan

```bash
terraform plan
```

### 4. Apply the Configuration

```bash
terraform apply
```

When prompted, type `yes`.

### 5. Verify Output

Check that the files are created:

```bash
cat databases.txt
# Output: We love databases!

cat devops.txt
# Output: We love devops!
```

##  `local.tf` File

```hcl
resource "local_file" "databases" {
  filename = "databases.txt"
  content  = "We love databases!"
}

resource "local_file" "devops" {
  filename = "devops.txt"
  content  = "We love devops!"
}
```

##  Cleanup

To delete the created files and Terraform state:

```bash
terraform destroy
```


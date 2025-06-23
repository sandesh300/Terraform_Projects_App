
#  Terraform Demo 3 – Random Pet & Local File

This Terraform project demonstrates the use of two key providers:
- `random_pet`: to generate a fun, random pet name.
- `local_file`: to write a file to the local system with custom content.

##  Project Structure

```

Terraform\_demo\_3/
├── main.tf
├── variables.tf
├── terraform.tfstate
├── .terraform/
├── .terraform.lock.hcl
└── pets.txt

````

##  Resources Used

- [`random_pet`](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/pet): Generates a unique pet name with a prefix and separator.
- [`local_file`](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file): Creates a file with user-defined content.

## 🛠 Configuration Details

### `main.tf`

```hcl
resource "local_file" "pet" {
  filename = var.file_name
  content  = var.content
}

resource "random_pet" "my-pet" {
  prefix    = var.prefix
  separator = var.separator
  length    = var.length
}
````

### `variables.tf`

```hcl
variable "file_name" {
  default = "pets.txt"
}

variable "content" {
  default = "We love pets!"
}

variable "prefix" {
  default = "Mrs!"
}

variable "separator" {
  default = "."
}

variable "length" {
  default = "1"
}
```

##  How to Run

### 1. Initialize the Terraform Working Directory

```bash
terraform init
```

### 2. Apply the Terraform Plan

```bash
terraform apply
```

Type `yes` when prompted.

### 3. Check the Output

A file named `pets.txt` will be created with the message:

```
We love pets!
```

You’ll also see the randomly generated pet name (e.g., `Mrs!.aphid`) in the Terraform state.

### 4. Optional: View State

```bash
terraform show
```

##  Clean Up

To destroy the created file and remove the generated resources:

```bash
terraform destroy
```


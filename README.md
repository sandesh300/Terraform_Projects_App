# Terraform Local File Examples 🛠

This repository demonstrates basic Terraform usage with the `local_file` and `random_pet` providers to create local text files.

##  Projects Overview

### 1. **Terraform_demo_1 – Single File**
Creates a `languages.txt` file with:

### 2. **Terraform_demo_2 – Multiple Files**
Creates:
- `databases.txt` → *We love databases!*
- `devops.txt` → *We love devops!*

### 3. **Terraform_demo_3 – Random Pet & File**
Creates a `pets.txt` file and generates a random pet name using the `random_pet` provider.

---

##  How to Use

1. Clone the repo or create the `.tf` files.
2. Initialize:
```bash
terraform init
````

3. Apply:

```bash
terraform apply
```

##  Cleanup

To remove resources:

```bash
terraform destroy
```

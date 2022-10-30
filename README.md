# What is Terraform

Terraform is an open source IAC(infra as code) tool written in golang for building, changing, and versioning infrastructure safely and efficiently. With Terraform we can provision infra through code/software to achieve consistent and predictable environments. With Terraform an organization is not locked with one cloud provider and can opt for hybrid cloud infra.

**Terraform is created by HashiCorp**

Terraform is declarative & it uses HCL(HashiCorp Configuration Language) to declare the desired state of your infra.

Documentation - https://www.terraform.io/intro/index.html

# What is Terraform CLI

It's command like tool written in golang to run terraform commands.
Basic commands are init , plan , apply and destroy.
you can get it from https://www.terraform.io/downloads.html as per your operating system.
How to run Terraform commands through CLI

# Building blocks of Terraform configuration files

Terraform config files are written in HCL(Hashicorp configuration language) . HCL is strutured configuration language, which basically focus on intended goal rather than the steps to reach that goal. There are 5 basics building blocks of terraform configuration files

- **Provider** - Terraform support lot of providers , so you have providers for GCP , AWS , Docker , Azure etc. please check terrafrom documentation at https://learn.hashicorp.com/terraform. Providers are binaries. They work with terraform CLI to intract with remote systems to provision the infra.
Almost all the terraform providers are written in golang.

- **Resource** - These are basically reference to the individual service which provider has to offer and help in creating resources 

- **Provisioner** - They are inked to a resource and declared under resource section. They are executed after a resource a created or before a resource is destroyed. Provisioners are used to execute scripts on local or on remote machine.

- **Output** - output returns the values after creation of resources. It acts as input to other resource as well

- **Module** -Centralized Structure and provides reusability to your code. Based on DRY (DONT REPEAT YOURSELF) pronciple of software design
Modules are of 2 types : local and global. Local modules are the modules which reside on the same machine as your other terraform config files. Global modules reside in a central registry like terrafrom registry - https://registry.terraform.io/

# Variables in Terraform

- Terraform allows to centrally define the values that can be used in multiple terraform configuration blocks
- Terraform has string , number , bool , list , map types of variable. Assigning values to variable in multiple ways
- Variable defaults - define variables with its default value in variable.tf configuration file. For e.g in variable.tf variable "region" { default = "us-east-1" } Override default value, define in terraform.tfvars. region = "us-east-2"
- To access these variables in resource block simply use var.region
- Command Line flags(terraform apply -var 'regions=us-east1')
- Variable definition file(terraform apply -var-file 'terraform.tfvars')
- **Documentation** - https://www.terraform.io/docs/language/values/variables.html.

# Terraform Cloud

- While running terraform locally gives you fill control, it has its own challenges when working in a team.
- Anyone having the key can deploy infra without any approval.
- The management of terraform state file becomes an issue.
- The management of variables especially sensitive ones becomes an issue.
- Private registry to store remote modules so that they can used by others.
- Terraform cloud takes care of all this as SAAS.
- **Documentation** : https://learn.hashicorp.com/tutorials/terraform/cloud-sign-up?in=terraform/cloud-get-started
Terraform Enterprise

This is enterprise version of terraform cloud.
Its used by big enterprises.
# Best Practices

- Always give structure to your configuration files. Don't put everything in one file.
- Always write your code with reusability in mind. Try to write modules for each resource type.
- When writing modules always make them generic so that they can shared and used with other teams.
# Terraform Associate Certification

- https://www.hashicorp.com/certification/terraform-associate
- https://www.pluralsight.com/paths/hashicorp-certified-terraform-associate
# Documentation

- Terraform Detailed documentation : https://www.terraform.io/docs/index.html
- Getting Started with GCP : https://learn.hashicorp.com/collections/terraform/gcp-get-started
- Google configuration reference with GCP ( detailed documentation ) :  https://registry.terraform.io/providers/hashicorp/google/latest/docs/guides/provider_reference

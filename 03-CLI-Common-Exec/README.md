## Terraform Initialization 
```
terraform init 
```

## Terraform Plan  
```
terraform plan 
```

## Terraform Apply the changes 
```
terraform apply
```

## Terraform Destroy the changes / updates
```
terraform destroy
```

## Create a Build Plan 
```
terraform plan -out build-plan
```

## View Plan 
```
terraform show build-plan
```

## To Validate the .tf file syntax  
```
terraform validate
```

## To Format the .tf file 
```
terraform fmt
```

## Pull the change from Cloud Portal & Update in the .tfstate file
```
terraform refresh 
```

## Terraform Review the changes / updates
```
terraform show
```

## Terraform Destroy the changes / updates
```
terraform plan -destroy -out destroy-plan
```

## Apply the plan 
```
terraform apply <plan-name>
```

## Apply the changes without being prompt for plan - concent ( yes/no ): 
```
terraform apply --auto-approve 
```

## Destory a target resource. 
```
terraform destroy -target aws_instance.frontend[0]
```

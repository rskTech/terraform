# aws-cicd-codepipeline-terraform


1. Git Repo :  terraform-accenture-22-Aug-2022 
2. s3 Bucket for terraform state mgmt ( Version Cantrol Enable) 
   -  aws-cicd-codepipeline-terraform
3. Secret Manager -> Add Docker Credention to avoid rate limit errors 
   - codebuild-dockerhub
   - copy the arn ( arn:aws:secretsmanager:us-east-1:XXXXXXXXXXXXXX:secret:codebuild-dockerhub-XXXXXX ) 
   
4. Go to CodePipeline -> Settings -> Connections -> Create GitHUB Connections -> Next -> Install a new app -> Select the github account -> connect -> Copy the ARN. 
   - Copy the arn (  arn:aws:codestar-connections:us-east-1:XXXXXXXXXXXX3:connection/07574224-9266-44de-XXXXXXXXXXXXXXXXXXXX )
   
5. Clone the git repo in local env 
6. Create a terraform.tfvars   
     - dockerhub_credentials =
	 - codestar_connector_credentials = 
	 
7. Terraform file for S3 backend, Provider, variable.tf 
     - terraform init 
	 
8. Let create a Pipeline Requirement 
     - create a artifact s3 bucket ( pipeline-artifacts-av ) 
	 - create IAM Role ( tf-codebuild-role & tf-codebuild-Pipeline-role ) 
	 


### Complete Work Flow: 

git -> Pipeline -> CodePipline -> CodeBuild Project -> Docker -> git checkout dev -> terrafrom init,validate,plan,apply -> Aws Resource Created. 

virginia:
    terraform workspace new virginia || terraform workspace select virginia
    terraform init
    terraform apply -var-file regions/virginia.tfvars --auto-aprove
ohio:
    terraform workspace new ohio || terraform workspace select ohio
    terraform init
    terraform apply -var-file regions/ohio.tfvars --auto-aprove
california:
    terraform workspace new california || terraform workspace select california
    terraform init
    terraform apply -var-file regions/california.tfvars --auto-aprove
oregon:
    terraform workspace new oregon || terraform workspace select oregon
    terraform init
    terraform apply -var-file regions/oregon.tfvars --auto-aprove
apply-all: verginia ohio california oregon

virginia-destroy:
    terraform workspace new virginia || terraform workspace select virginia
    terraform init
    terraform apply -var-file regions/virginia.tfvars --auto-aprove
ohio-destroy:
    terraform workspace new ohio || terraform workspace select ohio
    terraform init
    terraform apply -var-file regions/ohio.tfvars --auto-aprove
california-destroy:
    terraform workspace new california || terraform workspace select california
    terraform init
    terraform apply -var-file regions/california.tfvars --auto-aprove
oregon-destroy:
    terraform workspace new oregon || terraform workspace select oregon
    terraform init
    terraform apply -var-file regions/oregon.tfvars --auto-aprove
destroy-all: verginia-destroy ohio-destroy california-destroy oregon-destroy
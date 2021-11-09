#!/bin/bash

echo
echo 'Preparing the following Terraform-related aliases:'
echo
echo '  tf=terraform'
echo '  tfa=terraform apply'
echo '  tfaa=terraform apply -auto-approve'
echo '  tfd=terraform destroy'
echo '  tfdd=terraform destroy -auto-approve'
echo '  tfi=terraform init'
echo '  tfp=terraform plan'
echo '  tfsl=terraform state list'
echo '  tfv=terraform version'
echo

touch ~/.bash_profile
echo "alias tf='terraform'" >> ~/.bash_profile
echo "alias tfa='terraform apply'" >> ~/.bash_profile
echo "alias tfaa='terraform apply -auto-approve'" >> ~/.bash_profile
echo "alias tfd='terraform destroy'" >> ~/.bash_profile
echo "alias tfdd='terraform destroy -auto-approve'" >> ~/.bash_profile
echo "alias tfi='terraform init'" >> ~/.bash_profile
echo "alias tfp='terraform plan'" >> ~/.bash_profile
echo "alias tfsl='terraform state list'" >> ~/.bash_profile
echo "alias tfv='terraform version'" >> ~/.bash_profile
echo 'Run `source ~/.bash_profile` to apply the new aliases.'
echo

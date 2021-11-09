# Terraform Aliases

[![MIT License](https://img.shields.io/badge/License-MIT-brightgreen)](LICENSE)

Reduce keystrokes and typos when trying to run Terraform-related commands with these aliases.

|alias|command|
|---|---|
|`tf`|`terraform`|
|`tfa`|`terraform apply`|
|`tfaa`|`terraform apply -auto-approve`|
|`tfd`|`terraform destroy`|
|`tfdd`|`terraform destroy -auto-approve`|
|`tfi`|`terraform init`|
|`tfp`|`terraform plan`|
|`tfsl`|`terraform state list`|
|`tfv`|`terraform version`|

## How to Use

1. Open a shell terminal.

    ```bash
    $ git clone https://github.com/bellyslap/terraform-aliases.git
    $ cd terraform-aliases
    $ sh terraform-aliases.sh

    Preparing the following Terraform-related aliases:

      tf=terraform
      tfa=terraform apply
      tfaa=terraform apply -auto-approve
      tfd=terraform destroy
      tfdd=terraform destroy -auto-approve
      tfi=terraform init
      tfp=terraform plan
      tfsl=terraform state list
      tfv=terraform version

    Run `source ~/.bash_profile` to apply the new aliases.

    $ source ~/.bash_profile
    ```

2. Close the shell terminal. Open a new one and run `tfv` to verify.

    ```bash
    $ tfv
    Terraform v1.0.10
    on linux_amd64
    ```

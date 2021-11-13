#!/bin/bash

# MIT License
# 
# Copyright (c) 2021 Fermin Catacutan
# 
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the "Software"),
# to deal in the Software without restriction, including without limitation
# the rights to use, copy, modify, merge, publish, distribute, sublicense,
# and/or sell copies of the Software, and to permit persons to whom the Software
# is furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
# THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.

echo
echo 'The following Terraform-related aliases will be added to your profile:'
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
echo 'Enter the path where these aliases should be added (e.g. `~/.bash_profile`, `~/.bash_aliases`, etc). Defaults to `~/.bash_profile`.'

profile_path='~/.bash_profile'
read profile_path_input

if [ -z "$profile_path_input" ] # Check for NULL or empty string.
then
  profile_path=~/.bash_profile
else
  profile_path=~/${profile_path_input#'~/'} # Convert input to a file path.
fi

touch $profile_path # Create the file if it doesn't exist.
echo "alias tf='terraform'" >> $profile_path
echo "alias tfa='terraform apply'" >> $profile_path
echo "alias tfaa='terraform apply -auto-approve'" >> $profile_path
echo "alias tfd='terraform destroy'" >> $profile_path
echo "alias tfdd='terraform destroy -auto-approve'" >> $profile_path
echo "alias tfi='terraform init'" >> $profile_path
echo "alias tfp='terraform plan'" >> $profile_path
echo "alias tfsl='terraform state list'" >> $profile_path
echo "alias tfv='terraform version'" >> $profile_path
echo
echo "You may need to run \`source $profile_path_input\` to apply the new aliases."
echo

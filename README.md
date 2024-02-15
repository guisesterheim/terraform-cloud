# terraform-cloud

TF Cloud instructions

create account confirm email address

profile > create organization > lab-guilherme

add vcs provider create repo on github. make sure there's at least one branch (git defender approval might be required)

projects and workspace add workspace

"auto-apply API, CLI & VCS runs" > select "auto-apply run triggers"

add AWS provider to Isengard: https://developer.hashicorp.com/terraform/cloud-docs/workspaces/dynamic-provider-credentials/aws-configuration

add project: terraform cloud add workspace: kms-dev (name) select project, working directory, auto apply run triggers, vcs branch dev,

recording:

update the IAM role to allow the "challenge" project

delete the old workspace we left in the account

create workspace
change from that folder only
dev branch

add two custom terraform variables

add region

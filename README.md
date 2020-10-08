# IAC Terraform

A repository containing infrastructure as code leveraging [Terraform](https://www.terraform.io/).

## Overview 

The following repository aims to contain a reusable set of Terraform modules and should serve as an investigation into gaining a stronger understanding of Terraform IAC.

...TBC

## Prerequisites

1. Install the DigitalOcean CLI tool `doctl` using [Homebrew](https://brew.sh/).
```
brew install doctl
```

2. Obtain a valid access token via DigitalOcean administration dashboard. Export the access token to a environment variable.
```
export DIGITALOCEAN_TOKEN="$YOUR_PERSONAL_ACCESS_TOKEN"
```

3. Configure the `doctl` CLI by running the following:
```
doctl auth init --access-token $DIGITALOCEAN_TOKEN
```

4. Install the Terraform CLI tool
```
brew install terraform
```

## Usage - WIP

```
# Inspect a module's providers 
terrafrom providers modules/kube-digitalocean

# Initialize Terraform to install module dependencies and prepare local terraform state
terraform init environments/dev/

# Prepare a dry-run execution plan, detailing the resources to be deployed
terraform plan -var "do_token=${DIGITALOCEAN_TOKEN}" environments/dev
```
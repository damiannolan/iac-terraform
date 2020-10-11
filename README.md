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

## Setup and usage - WIP

```
# Create a workspace
terraform workspace new kube-digitalocean-dev-eu-central

# Inspect a module's providers 
terrafrom providers modules/kube-digitalocean

# Initialize Terraform to install module dependencies and prepare local terraform state
terraform init environments/dev/

# Prepare a dry-run execution plan, detailing the resources to be deployed
terraform plan -var "do_token=${DIGITALOCEAN_TOKEN}" -out dev.out environments/dev

# Deploy configuration
terraform apply "dev.out"

# Configure your kube context using the following env var
export KUBECONFIG=~/.kube/dev/config

# Verify your kube context using either of the following
kubectl config current-context
kubectl config get-contexts

# List nodes and cluster info
kubectl get nodes
kubectl cluster-info
```

## Notes

- Best practices recommends using [Terraform remote state](https://www.terraform.io/docs/state/remote.html).

## References

- [Terraform workspace naming conventions](https://www.terraform.io/docs/cloud/workspaces/naming.html)

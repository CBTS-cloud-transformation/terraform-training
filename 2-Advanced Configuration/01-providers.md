# Providers

A provider in Terraform is a plugin that enables interaction with an API.
This includes cloud providers, SaaS providers, and other APIs. The providers are specified in the Terraform configuration code. They tell Terraform which services it needs to interact with.

For example, if you want to use Terraform to create a virtual machine in a public cloud, you would need to use that cloud's specific provider. The provider provides a set of resources that Terraform can use to create, manage, and destroy virtual machines on that cloud.

Here is an example of how to use the AWS provider in a Terraform configuration:

```hcl
provider "aws" {
  region = "us-east-1"
}
```

In this example, we are defining the aws provider. We are specifying the region as us-east-1.

When Terraform runs, it will install the aws provider locally in the `.terrform` sub-directory or sub-folder.

Here are some other examples of providers:

- `azurerm` - for Azure
- `google` - for Google Cloud Platform
- `kubernetes` - for Kubernetes
- `openstack` - for OpenStack
- `vsphere` - for VMware vSphere

There are many other providers available, and new ones are being added all the time.

Providers are an essential part of Terraform. They allow Terraform to interact with a wide variety of cloud providers and other APIs. This makes Terraform a very versatile tool that can be used to manage a wide variety of infrastructure.

## Different ways to configure providers in terraform

There are three main ways to configure providers in Terraform:

### In the root module

This is the most common way to configure providers. The provider configuration block is placed in the root module of the Terraform configuration. This makes the provider configuration available to all the resources in the configuration.

```hcl
provider "azurerm" {
  features {}
}
```

### In a child module

You can also configure providers in a child module. This is useful if you want to reuse the same provider configuration in multiple resources.

In the child module:

```hcl
provider "aws" {
}
```

In the calling module:

```hcl
provider "aws" {
  region = "us-east-1"
}

provider "aws" {
  region = "us-east-2"
  alias = "eus2"
}

module "aws_vpc" {
  source = "./aws_vpc"
  providers = {
    aws = "aws.eus2"
  }
}
```

### In the required_providers block

You can also configure providers in the required_providers block. This is useful if you want to make sure that a specific provider version is used.

```hcl
terraform {
  required_providers {
    aws = {
      source = "hashicorp/azurerm"
      version = "~> 3.79"
    }
  }
}
```

Some providers will require a specific `provider` block, others may not need it. The best way to configure providers depends on your specific needs. If you are only using a single provider, then configuring it in the root module is the simplest option. If you are using multiple providers, or if you want to reuse the same provider configuration in multiple resources, then passing it to a child module is a good option. And if you want to make sure that a specific provider version is used, then configuring it in the required_providers block is the best option.

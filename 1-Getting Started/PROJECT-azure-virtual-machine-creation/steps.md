# Overview of steps

**Note**: If you compare to the AWS option here, you will notice Azure requires significantly more configuration code. This is due to the underlying API and how resources are created in Azure.

Create a directory for your Terraform project and create a Terraform configuration file (usually named `main.tf`) in that directory. In this file, you define the Azure provider and resources you want to create. Here's a sample of some bits of the configuration code (`...` indicates missing code found in `main.tf`):

```hcl
   provider "azurerm" {
    features {}
   }

  ...

   resource "azurerm_windows_virtual_machine" "example" {
    name                = "example-machine"
    resource_group_name = azurerm_resource_group.example.name
    ...
   }
```

## Initialize Terraform

In your terminal, navigate to the directory containing your Terraform configuration files and run:

```cmd
terraform init
```

This command initializes the Terraform working directory, downloading any necessary provider plugins, and establishes the initial tfstate.

## Apply the Configuration

Run the following command to create the Azure resources defined in your Terraform configuration:

```cmd
terraform apply
```

Terraform will display a plan of the changes it's going to make. Review the plan and type "yes" when prompted to apply it.

## Verify Resources

After Terraform completes the provisioning process, you can verify the resources created in the Azure Portal or by using Azure CLI commands.

## Destroy Resources

If you want to remove the resources created by Terraform, you can use the following command:

```cmd
terraform destroy
```

Be cautious when using `terraform destroy` as it will delete resources as specified in your Terraform configuration.
# Setup Terraform for Azure

To configure AWS credentials and set up Terraform to work with AWS, you'll need to follow these steps:

1. **Install Azure CLI (Command Line Interface)**: Make sure you have the Azure CLI installed on your machine. You can download and install it from the [Azure CLI download page](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli-windows?tabs=azure-cli#install-or-update).

2. **Create an Entra ID User**: To interact with Azure programmatically, you should create an Entra ID user with appropriate permissions to the subscription you are working with.

3. **Configure Azure CLI Credentials**:

Use the Azure CLI to configure your credentials. Open a terminal and run:

``` CMD
az login
```

A browser window will open, and it will prompt you to enter your Azure credentials.
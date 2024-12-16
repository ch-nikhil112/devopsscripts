param (
    [Parameter(Mandatory=$true)]
    [string]$SubscriptionId,            # Azure Subscription ID

    [Parameter(Mandatory=$true)]
    [string]$ResourceGroup,            # Existing Azure Resource Group

    [Parameter(Mandatory=$true)]
    [string]$VMName,                   # Name of the Virtual Machine

    
)

# Set the Azure subscription context
az account set --subscription $SubscriptionId

# Create the Virtual Machine using Azure CLI in an existing Resource Group
az vm create --resource-group $ResourceGroup --name $VMName --image Ubuntu2204 --size Standard_B1s --admin-username $AdminUsername --admin-password $AdminPassword --location $Location



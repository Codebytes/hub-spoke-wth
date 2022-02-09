# Steps

- az group create --name hub-spoke --location eastus
- az deployment group create -g hub-spoke --template-file bicep/main.bicep 


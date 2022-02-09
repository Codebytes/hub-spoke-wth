param location string = resourceGroup().location

@description('Name of the VNET')
param Name string

@description('VNet Subnet')
param AddressPrefix string

resource vnetHub 'Microsoft.Network/virtualNetworks@2020-05-01' = {
  name: Name
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: [
        AddressPrefix
      ]
    }
    subnets: [
    ]
  }
}
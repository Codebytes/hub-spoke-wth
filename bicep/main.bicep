param location string = resourceGroup().location

param hubNetwork object = {
  name: 'vnet-hub'
  addressPrefix: '10.0.0.0/20'
}

module hubVnet 'modules/vnet.bicep' = {
    name: hubNetwork.name
    params: {
        Name: hubNetwork.name
        AddressPrefix: hubNetwork.addressPrefix
        location: location
    }
}
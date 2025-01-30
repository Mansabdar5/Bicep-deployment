param storageAccountName string
param location string = resourceGroup().location


module sta 'storageAccount.bicep' = {
  name: 'StaDeployment'
  params: {
    storageAccountName: storageAccountName
    location: location
  }
}
@maxLength(11)
param storageAccountPrefix string = 'bicep'
param location string = resourceGroup().location

var storageAccountName = '${storageAccountPrefix}${uniqueString(subscription().id)}'

module sta 'storageAccount.bicep' = {
  name: 'StaDeployment'
  params: {
    storageAccountName: storageAccountName
    location: location
  }
}
@maxLength(11)
param storageAccountPrefix string = 'st'
param location string = resourceGroup().location

var storageAccountName = '${storageAccountPrefix}${uniqueString(subscription().id)}'

resource storageaccount 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: storageAccountName
  location: location
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
}
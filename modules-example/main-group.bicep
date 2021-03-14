module stg './storage.bicep' = {
  name: 'storageDeploy'
  scope: resourceGroup('my-test-bicep')
  params: {
    storageAccountName: 'alesstorage003'
  }
}

output storageName array = stg.outputs.containerProps
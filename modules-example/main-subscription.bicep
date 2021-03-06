targetScope = 'subscription'

module stg './storage.bicep' = {
  name: 'storageDeploy'
  scope: resourceGroup('my-test-bicep')
  params: {
    storageAccountName: 'alesstorage004'
  }
}

// param deployStorage bool = true

// module stg './storage.bicep' = if (deployStorage) {
//   name: 'storageDeploy'
// }

// ---

// param deployments array = [
//   'foo'
//   'bar'
// ]

// module stg './storage.bicep' = [for item in deployments: {
//   name: '${item}storageDeploy'
// }]

// ---

// var objectId = 'cf024e4c-f790-45eb-a992-5218c39bde1a' // change this AAD object ID. This is specific to the microsoft tenant
// var contributor = 'b24988ac-6180-42a0-ab88-20f7382dd24c'
// resource rbac 'Microsoft.Authorization/roleAssignments@2020-04-01-preview' = {
//   name: guid(subscription().id, objectId, contributor)
//   properties: {
//     roleDefinitionId: contributor
//     principalId: objectId
//   }
// }



output storageName array = stg.outputs.containerProps
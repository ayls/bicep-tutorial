param storageAccountName string // need to be provided since it is existing

resource stg 'Microsoft.Storage/storageAccounts@2019-06-01' existing = {
  name: storageAccountName
}

param containerNames array = [
  'dogs'
  'cats'
  'fish'
]

resource blob 'Microsoft.Storage/storageAccounts/blobServices/containers@2019-06-01' = [for name in containerNames: {
  name: '${stg.name}/default/${name}'
  // dependsOn will be added when the template is compiled
}]

output containerProps array = [for i in range(0, length(containerNames)): blob[i].id]
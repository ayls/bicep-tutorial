param storageAccountName string // need to be provided since it is existing

resource stg 'Microsoft.Storage/storageAccounts@2019-06-01' existing = {
  name: storageAccountName
}

param currentYear string = utcNow('yyyy') // format utc time to year only

resource blob 'Microsoft.Storage/storageAccounts/blobServices/containers@2019-06-01' = if(currentYear == '2021') {
  name: '${stg.name}/default/logs'
  // dependsOn will be added when the template is compiled
}

output storageId string = stg.id
output primaryEndpoint string = stg.properties.primaryEndpoints.blob
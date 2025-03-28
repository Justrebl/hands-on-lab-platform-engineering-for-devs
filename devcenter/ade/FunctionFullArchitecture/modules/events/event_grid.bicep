param name string
param location string
param tags object = {}
param storageAccountId string

resource eventGrid 'Microsoft.EventGrid/systemTopics@2024-06-01-preview' = {
  name: name
  location: location
  tags: tags
  properties: {
    source: storageAccountId
    topicType: 'Microsoft.Storage.StorageAccounts'
  }
}

output id string = eventGrid.id
output name string = eventGrid.name

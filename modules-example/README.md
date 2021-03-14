# Targeting a group

This example assumes you have already created my-test-bicep and my-test-bicep2 resource groups and alesstorage003 storage account

```
az deployment group create -f ./main-group.bicep -g my-test-bicep2
```

# Targeting a subscriptions

This example assumes you have already created my-test-bicep resource group and alesstorage004 storage account


```
az deployment sub create -f .\main-subscription.bicep -l westeurope
```
This repo contains script crated by following [Bicep Tutorial](https://github.com/Azure/bicep/blob/main/docs/tutorial/01-simple-template.md).

Make sure you have [setup the tooling](https://github.com/Azure/bicep) before trying these scripts.

# Create storage account

This examples assumes you have already created my-test-bicep resource group.

```
az deployment group create -f ./createstorageaccount.bicep -g my-test-bicep 
```

# Update existing storage examples

These examples assume you have already created my-test-bicep resource group and alesstorage001 and alesstorage002 storage accounts.

```
az deployment group create -f ./updatestorageaccount1.bicep -g my-test-bicep --parameters storageAccountName=alesstorage001
```

```
az deployment group create -f ./updatestorageaccount2.bicep -g my-test-bicep --parameters storageAccountName=alesstorage002
```

# Modules

[README.md](/modules-example/README.md)

# Decompile ARM

[README.md](/decompile-example/README.md)

# Build ARM Template

[README.md](/build-example/README.md)
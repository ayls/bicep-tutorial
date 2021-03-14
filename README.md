# Create storage account
az deployment group create -f ./createstorageaccount.bicep -g my-test-bicep 

# Update existing storage examples

az deployment group create -f ./updatestorageaccount1.bicep -g my-test-bicep --parameters storageAccountName=alesstorage001

az deployment group create -f ./updatestorageaccount2.bicep -g my-test-bicep --parameters storageAccountName=alesstorage002
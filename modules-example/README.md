# Targeting a group
az deployment group create -f ./main-group.bicep -g my-test-bicep2

# Targeting a subscriptions
az deployment sub create -f .\main-subscription.bicep -l westeurope
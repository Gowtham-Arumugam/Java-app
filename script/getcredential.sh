az aks get-credentials --resource-group ThreeTierApp-RG --name three-tier-app-aks-cluster

kubectl create secret tls gowtham-tls --key tls.key   --cert tls.crt -n java-app

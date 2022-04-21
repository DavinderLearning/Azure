az login

#create me a resource group
az group create --name "rgazlearn2" --location "canadacentral"


az group list s

##Windows Image
#create me a vm
az vm create --name "vmazlearn2" --resource-group "rgazlearn2" --image "win2019datacenter" --admin-username "demoadmin" --admin-password "what@ver@!2890"

#what images are available on azure currently
az vm image list -o table

#open up port for remote desktop 
az vm open-port --resource-group "rgazlearn2" --name "vmazlearn2" --port "3389"

#get the list of ip address of this vm
az vm list-ip-addresses --resource-group "rgazlearn2" --name "vmazlearn2" --output table

az vm create --name "vmazlearn2win" --resource-group "rgazlearn2" --image "win2019datacenter" --admin-username "demoadmin" --admin-password "what@ver@!2890"

az vm create --name "vmazlearn2linux" --resource-group "rgazlearn2" --image "UbuntuLTS" --admin-username "demoadmin" --admin-password "what@ver@!2890"
# open port for ssh access
az vm open-port --resource-group "rgazlearn2" --name "vmazlearn2linux" --port "22"

az vm list-ip-addresses --resource-group "rgazlearn2" --name "vmazlearn2linux" --output table

ssh demoadmin@10.0.0.6

az group delete --name"rgazlearn2"






# login to azure

az login

$rg="rgLeanCnt1"
$location="canadacentral"







#create resource group
az group create --name $rg --location $location

$acr="acrleancnt1"
az acr create --name $acr --resource-group $rg --location $location --sku "basic"

az acr login --name $acr

$app="drwebapp2"
mkdir $app
cd $app
dotnet new webapi --framework netcoreapp3.1

cd ..\

dotnet build ./drwebapp2

dotnet run  --project  ./drwebapp2
curl http://localhost:5001
dotnet publish -c Release ./drwebapp2

docker build -t drwebapp2image:v1 .

docker run --name drwebapp2 --publish 8082:80 --detach .\drwebapp2image:v1
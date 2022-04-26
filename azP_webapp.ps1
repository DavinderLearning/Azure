#create variables
$webappname ="mywebapps-5-$(Get-Random)"
$rgname="webapps-5-dev-rg"
$location="westus"

#Lets connect to azure
#Connect-AzAccount -Subscription 'Azure subscription 1'

#new resource group
New-AzResourceGroup -name $rgname -Location $location

#create app service plan
New-AzAppServicePlan -name $webappname -Location $location -ResourceGroupName $rgname -Tier "F1" -Linux

#create the web app
New-AzWebApp -Name $webappname -ResourceGroupName $rgname -AppServicePlan $webappname 


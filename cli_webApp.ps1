#using backtick for line continuuation if using powershell for execution if using bash then use \ for line continuation


az login


az group create --name "rgLearn4" --location "westus"

az appservice plan create  --name "webapps-dev-plan"   --resource-group "rgLearn4"   --sku "f1"      --is-linux

#list me all runtimes available for webapps
az webapp list-runtimes 
#list me all runtimes available for webapps in linux 
az webapp list-runtimes --linux


az webapp create  --name "webapps-dev-mp200202"  --plan "webapps-dev-plan" --resource-group "rgLearn4" --runtime "NODE:14-LTS"  

#my deployment
az appservice plan create --name "railoadtrac2" --resource-group "raient1" --sku "s1"
az webapp create --name "railoadtrac2" --plan "railoadtrac2" --resource-group "raient1" --runtime "ASPNET:V4.8"
 az webapp deployment source config --branch "main" --manual-integration --name "railoadtrac" --repo-url "https://github.com/DavinderLearning/ArTraxNoSource.git" --resource-group "raient1"

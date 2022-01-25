# Create variables
# $(Get-Random) used to generate
$webappname = "mywebapp-demo-f1" 
$rgname = 'webapp-demo-rg'
$location = 'eastus'

# Create a resource group
New-AzResourceGroup -Name $rgname -Location $location

# Create an App Service plan in S1 tier
New-AzAppServicePlan -Name $webappname -Location $location -ResourceGroupName $rgname -Tier F1

# Create a web app
New-AzWebApp -Name $webappname -Location $location -AppServicePlan $webappname -ResourceGroupName $rgname

# Cleanup resource
# Remove-AzResourceGroup -Name $webappname
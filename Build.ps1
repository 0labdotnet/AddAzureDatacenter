<# This shall be a journal of my journey through this script and everything it calls (more scripts and templates)

2017-01-28 17:58pst
Right now this basically just creates a resource group. Wooooooo.

#>

Param(
	[string] [Parameter(Mandatory=$true)] $ResourceGroupLocation,
    [string] [Parameter(Mandatory=$true)] $ResourceGroupName
	#[string] [Parameter(Mandatory=$true)] $Subscription
)

Login-AzureRmAccount -Credential (Get-Credential -Message "hello. Please to providing secrets")
New-AzureRmResourceGroup -Name $ResourceGroupName -Location $ResourceGroupLocation -Verbose -Force
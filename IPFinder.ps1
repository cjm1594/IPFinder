$File = Read-Host -Prompt 'Input the path of the file containing the hostnames'
$Names = Get-Content "$File"
foreach ($Name in $Names)
{
	$Counter = 0
	Write-Host "Ip addresses associated with '$Name'"
	$Results = [System.Net.Dns]::GetHostAddresses("$Name")
	foreach($Result in $Results)
	{
		$IP = $Result.IPAddressToString
		If(-NOT (($IP -eq '198.105.244.228') -OR ($IP -eq '198.105.254.228')))
		{
			$Counter = 1
			Write-Host $IP
		}
	}
	If($Counter -eq 0)
	{
		Write-Host "No IP addresses found for this host."
	}
	Write-Host " "
}
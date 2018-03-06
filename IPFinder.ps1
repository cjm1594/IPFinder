#Gets filename to be read from user.
$File = Read-Host -Prompt 'Input the path of the file containing the hostnames'
$Names = Get-Content "$File"

#Loops through each list entry.
foreach ($Name in $Names)
{
	Write-Host "Ip addresses associated with '$Name'"
	
	#Writes all found IPs for each hostname to the console.
	try{
		$Results = [System.Net.Dns]::GetHostAddresses("$Name")
		foreach($Result in $Results)
		{
			$IP = $Result.IPAddressToString
			Write-Host $IP
		}
	}

	#Lets user know that no IPs were found if GetHostAddresses fails.
	catch{
		Write-Host "No IP addresses found for this host."
	}
	Write-Host " "
}

$DownloadUrl = $args[0]
$SaveTo =  $args[1]

try { (new-object System.Net.WebClient).DownloadFile($DownloadUrl,$SaveTo) }catch {echo $_.Exception }

#$WebClient = New-Object System.Net.WebClient
#$WebClient.DownloadFile(, )

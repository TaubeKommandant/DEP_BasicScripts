[Environment]::SetEnvironmentVariable(
    "Path", 
	"C:\foo;"+$env:Path, 
	[System.EnvironmentVariableTarget]::Machine
	)
Read-Host -Prompt "Press any key to continue..."
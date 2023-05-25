$newDir=$args[0]

# Remove if exists
$path = [System.Environment]::GetEnvironmentVariable(
    'PATH',
    'Machine'
)
$path = ($path.Split(';') | Where-Object { $_.TrimEnd('\') -ne $newDir }) -join ';'

[System.Environment]::SetEnvironmentVariable(
    'PATH',
    $newDir+";"+$path,
    'Machine'
)
$scriptPath = ".\hello.py"

$venvPath = ".\.venv\Scripts\python.exe"

$scriptArgs = ""

try {
    Start-Process -FilePath $venvPath -ArgumentList "$scriptPath $scriptArgs" -Wait -NoNewWindow

    Write-Host "Script executed successfully"
}
catch {
    Write-Error "Error executing script: $_"
    exit 1
}



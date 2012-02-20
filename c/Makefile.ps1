param($task)

Get-ChildItem *.exe | Remove-Item

if ($task -ne "clean") {
    if (-not(Get-Command cl -ErrorAction SilentlyContinue)) {
        ../Invoke-CmdScript.ps1 "C:\Program Files\Microsoft Visual Studio 10.0\VC\bin\vcvars32.bat"
    }
    Get-ChildItem *.c | % { cl $_.Name /Wall }
}
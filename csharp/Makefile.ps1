param($task)

Get-ChildItem *.exe | Remove-Item

if ($task -ne "clean") {
    Get-ChildItem *.cs | % { C:\Windows\Microsoft.NET\Framework\v3.5\csc.exe $_.Name /nologo }
}
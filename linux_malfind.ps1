# WARNINGS:
# This script may download actual linux malware such as Mozi or Mirai. These malware are botnets, so take caution to prevent infection of your computer
# by Mozi or Mirai or any other botnet for that matter. Please run this script in a safe environment to ensure proper execution and prevention of infection
# by malware.

while ($true) {
# Generate a random IP address
$ipAddress = '{0}.{1}.{2}.{3}' -f (Get-Random -Minimum 1 -Maximum 256), (Get-Random -Minimum 1 -Maximum 256), (Get-Random -Minimum 1 -Maximum 256), (Get-Random -Minimum 1 -Maximum 256)
$testUrl = "http://$ipAddress"

# Attempt to download the file from the generated IP address
# try {
    Write-Host "Connecting... : $ipAddress"
    Invoke-WebRequest -Uri "$testUrl/i" -OutFile "C:\AddrFinder" -Verbose
    Invoke-WebRequest -Uri "$testUrl/mozi.a" -OutFile "C:\AddrFinder" -Verbose
    Invoke-WebRequest -Uri "$testUrl/.i" -OutFile "C:\AddrFinder" -Verbose
    Invoke-WebRequest -Uri "$testUrl/bin.sh" -OutFile "C:\AddrFinder" -Verbose
    Invoke-WebRequest -Uri "$testUrl/mozi.m" -OutFile "C:\AddrFinder" -Verbose

# } catch {
    # Write-Host "Failed to download the file from IP address: $ipAddress"
    # Write-Host "Error message: $($_.Exception.Message)"
# }
}

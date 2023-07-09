REM DO NOT RUN THIS FILE ON YOUR HOST MACHINE, DO IT ON A VIRTUAL MACHINE (VM) IF YOU'RE GOING TO RUN THE CODE AT ALL. THIS SCRIPT PINGS KNOWN MALICIOUS
REM DOMAINS, WHICH MAY STEAL INFORMATION. TO ENSURE SAFE USE OF THIS PROGRAM INSIDE A VIRTUAL MACHINE, PLEASE RUN THE PROGRAM AND DO NOT ADD EXCLUSIONS IN
REM THE ANTIVIRUS YOU ARE TRYING TO TEST AS IT WILL DECREASE THE TEST'S USEFULNESS. THIS PROGRAM IS UNDER EXPERIMENTATION AND MAY NOT WORK AS INTENDED IF
REM AT ALL. PLEASE KEEP THIS IN MIND WHEN EXECUTING THIS PROGRAM IN YOUR VIRTUAL MACHINE.

@echo off

setlocal enabledelayedexpansion

set tested=0
set caught=0

REM List of websites to test
set "website_list=37.44.238.183 45.67.228.138 45.227.254.29"

for %%w in (%website_list%) do (
    set /a tested+=1
    
    REM Ping the website to test its reachability
    ping -n 1 %%w >nul
    
    REM If the website is unreachable (ping fails), increment the caught count
    if errorlevel 1 (
        set /a caught+=1
    )
)

echo Number of websites tested: %tested%
echo Number of websites caught: %caught%
echo Detection ratio: %caught% / %tested% = %%%%100 * caught / tested%%%%

endlocal

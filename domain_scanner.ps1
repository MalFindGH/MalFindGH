# Define the list of top-level domains (TLDs)
$TLDs = @(
    ".aaa",
    ".aarp",
    ".abb",
    ".abbott",
    ".abbvie",
    ".abc",
    ".able",
    ".abogado",
    ".abudhabi",
    ".ac",
    ".academy",
    ".accenture",
    ".accountant",
    ".accountants",
    ".aco",
    ".actor",
    ".ad",
    ".ads",
    ".ae",
    ".aeg",
    ".aero",
    ".aetna",
    ".af",
    ".afl",
    ".africa",
    ".ag",
    ".agakhan",
    ".agency",
    ".ai",
    ".aig",
    ".airbus",
    ".airforce",
    ".airtel",
    ".akdn",
    ".al",
    ".alibaba",
    ".alipay",
    ".allfinanz",
    ".allstate",
    ".ally",
    ".alsace",
    ".alstom",
    ".am",
    ".amazon",
    ".americanexpress",
    ".americanfamily",
    ".amex",
    ".amfam",
    ".amica",
    ".amsterdam",
    ".analytics",
    ".android",
    ".anquan",
    ".anz",
    ".ao",
    ".aol",
    ".apartments",
    ".app",
    ".apple",
    ".aq",
    ".aquarelle",
    ".ar",
    ".arab",
    ".aramco",
    ".archi",
    ".army",
    ".arpa",
    ".art",
    ".arte",
    ".as",
    ".asda",
    ".asia",
    ".associates",
    ".at",
    ".athleta",
    ".attorney",
    ".au",
    ".auction",
    ".audi",
    ".audible",
    ".audio",
    ".auspost",
    ".author",
    ".auto",
    ".autos",
    ".avianca",
    ".aw",
    ".aws",
    ".ax",
    ".axa",
    ".az",
    ".azure",
    ".ba",
    ".baby",
    ".baidu",
    ".banamex",
    ".bananarepublic",
    ".band",
    ".bank",
    ".bar",
    ".barcelona",
    ".barclaycard",
    ".barclays",
    ".barefoot",
    ".bargains",
    ".baseball"
    
    # Add more TLDs as needed
)

# Prompt the user for input
$domain = Read-Host -Prompt "Enter the domain name without TLD (e.g., microsoft)"

# Create an array to store the valid TLDs
$validTLDs = @()

# Check each TLD combination
foreach ($tld in $TLDs) {
    $testDomain = $domain + $tld
    $ip = $null

    # Make a DNS query to check if the domain exists
    try {
        $ip = [System.Net.Dns]::GetHostAddresses($testDomain)
    } catch {
        # Ignore any exceptions, as they indicate that the domain does not exist
    }

    # If the DNS query returned an IP address, consider the TLD valid
    if ($ip -ne $null) {
        $validTLDs += $tld
    }
}

# Display the valid TLDs to the user
if ($validTLDs.Count -gt 0) {
    Write-Host "Valid TLDs for '$domain':"
    $validTLDs | ForEach-Object {
        Write-Host "$domain$_"
    }
} else {
    Write-Host "No valid TLDs found for '$domain'."
}

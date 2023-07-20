Option Explicit

' Input your list of malware detection names here, separated by |
Dim malware_names
malware_names = "Adware:Win32/DealPly|Trojan:Win64/Agent|A|B|C|D|E|F|G"

' Pick a random malware detection name from the list
Dim selected_name, names, randomIndex
Randomize
names = Split(malware_names, "|")
randomIndex = Int((UBound(names) - LBound(names) + 1) * Rnd + LBound(names))
selected_name = names(randomIndex)

' Replace the delimiter with a line break (vbNewLine) to correctly display the message
selected_name = Replace(selected_name, "|", vbNewLine)

' Display the selected malware detection name as a popup message
MsgBox "Hello, the random malware detection name is:" & vbNewLine & selected_name, 64, "Malware Detection"

# ******************************************************************
#
#  Author				: T0nyDev
#  Date					: 04 December 2021
#  Required Input 		: None
#  Required Input 		: None
#  Optionnnal Input 	: None
#  Description			: Script to install Apps with winget tool
#  ******************************************************************

# ******************************************************************
# Version				: X.C
# Author				: none
# Date					: 
# Modification			:
# ******************************************************************

(
    "Microsoft.WindowsTerminal",
    "7zip.7zip",
    "PuTTY.PuTTY",
    "Git.Git",
    "Microsoft.VisualStudioCode",
    "Postman.Postman",
	"videolan.vlc",
	"winmerge.winmerge",
	"notepad++.notepad++",
	"Microsoft.PowerToys",
	"Sysinternals"
) | ForEach-Object {

	if (winget install -e --id $_) {
		Write-Host -ForegroundColor Green "Success on $_"
	} else {
		Write-Host -ForegroundColor Red "Error on $_"
	}

}
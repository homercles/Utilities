# 18/08/2020 CA Config File for Setting up powerline with Powershell
# Works with WindowsTerminal
# Followed the instructions from https://www.hanselman.com/blog/HowToMakeAPrettyPromptInWindowsTerminalWithPowerlineNerdFontsCascadiaCodeWSLAndOhmyposh.aspx
# This file is found by typing notepad $PROFILE
# Easiest way to implement is to do a link using this source in DOS
# C:\Users\guts>mklink /H D:\Source\Personal\Utilities\Powershell\Microsoft.PowerShell_profile.ps1 D:\Users\guts\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1
# Hardlink created for D:\Source\Personal\Utilities\Powershell\Microsoft.PowerShell_profile.ps1 <<===>> D:\Users\guts\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1


if ($IsMacOS -or $env:WT_Session)	{
	Import-Module posh-git
	Import-Module oh-my-posh
	Set-Theme Paradox
}

Import-Module PSReadLine
Set-Alias -Name vi -Value vim
# CA 1/9/2020 Have removed screenfetch as it's not compatible with PS v7
# Screenfetch

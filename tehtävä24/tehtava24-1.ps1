$folderPath = ".\Wallpapers"
$imageName = "1.jpg"
$imagePath = Join-Path -Path $folderPath -ChildPath $imageName

Set-ItemProperty -Path 'HKCU:\Control Panel\Desktop' -Name Wallpaper -Value $imagePath
RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters ,1 ,True

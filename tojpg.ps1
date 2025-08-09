Get-ChildItem *.png | ForEach-Object {
  ffmpeg -i $_.Name -q:v 2 ($_.BaseName + ".jpg")
}

Remove-Item -Path "*.png"
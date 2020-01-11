$rules = New-Object System.Collections.Hashtable
$rules.á  = "a"
$rules.à  = "a"
$rules.ả  = "a"
$rules.ã  = "a"
$rules.ạ  = "a"
$rules.ắ  = "aw"
$rules.ằ  = "aw"
$rules.ẳ  = "aw"
$rules.ẵ  = "aw"
$rules.ặ  = "aw"
$rules.ấ  = "aa"
$rules.ầ  = "aa"
$rules.ẩ  = "aa"
$rules.ẫ  = "aa"
$rules.ậ  = "aa"
$rules.í  = "i"
$rules.ì  = "i"
$rules.ỉ  = "i"
$rules.ĩ  = "i"
$rules.ị  = "i"
$rules.ướ = "wo"
$rules.ườ = "wo"
$rules.ưở = "wo"
$rules.ưỡ = "wo"
$rules.ượ = "wo"
$rules.ú  = "u"
$rules.ù  = "u"
$rules.ủ  = "u"
$rules.ũ  = "u"
$rules.ụ  = "u"
$rules.ứ  = "w"
$rules.ừ  = "w"
$rules.ử  = "w"
$rules.ữ  = "w"
$rules.ự  = "w"
$rules.é  = "e"
$rules.è  = "e"
$rules.ẻ  = "e"
$rules.ẽ  = "e"
$rules.ẹ  = "e"
$rules.ế  = "ee"
$rules.ề  = "ee"
$rules.ể  = "ee"
$rules.ễ  = "ee"
$rules.ệ  = "ee"
$rules.ó  = "o"
$rules.ò  = "o"
$rules.ỏ  = "o"
$rules.õ  = "o"
$rules.ọ  = "o"
$rules.ố  = "oo"
$rules.ồ  = "oo"
$rules.ổ  = "oo"
$rules.ỗ  = "oo"
$rules.ộ  = "oo"
$rules.ớ  = "ow"
$rules.ờ  = "ow"
$rules.ở  = "ow"
$rules.ỡ  = "ow"
$rules.ợ  = "ow"
$rules.ý  = "y"
$rules.ỳ  = "y"
$rules.ỷ  = "y"
$rules.ỹ  = "y"
$rules.ỵ  = "y"
$rules.Á  = "A"
$rules.À  = "A"
$rules.Ả  = "A"
$rules.Ã  = "A"
$rules.Ạ  = "A"
$rules.Ắ  = "Aw"
$rules.Ằ  = "Aw"
$rules.Ẳ  = "Aw"
$rules.Ẵ  = "Aw"
$rules.Ặ  = "Aw"
$rules.Ấ  = "Aa"
$rules.Ầ  = "Aa"
$rules.Ẩ  = "Aa"
$rules.Ẫ  = "Aa"
$rules.Ậ  = "Aa"
$rules.Í  = "I"
$rules.Ì  = "I"
$rules.Ỉ  = "I"
$rules.Ĩ  = "I"
$rules.Ị  = "I"
$rules.Ướ = "Wo"
$rules.Ườ = "Wo"
$rules.Ưở = "Wo"
$rules.Ưỡ = "Wo"
$rules.Ượ = "Wo"
$rules.Ú  = "U"
$rules.Ù  = "U"
$rules.Ủ  = "U"
$rules.Ũ  = "U"
$rules.Ụ  = "U"
$rules.Ứ  = "W"
$rules.Ừ  = "W"
$rules.Ử  = "W"
$rules.Ữ  = "W"
$rules.Ự  = "W"
$rules.É  = "E"
$rules.È  = "E"
$rules.Ẻ  = "E"
$rules.Ẽ  = "E"
$rules.Ẹ  = "E"
$rules.Ế  = "Ee"
$rules.Ề  = "Ee"
$rules.Ể  = "Ee"
$rules.Ễ  = "Ee"
$rules.Ệ  = "Ee"
$rules.Ó  = "O"
$rules.Ò  = "O"
$rules.Ỏ  = "O"
$rules.Õ  = "O"
$rules.Ọ  = "O"
$rules.Ố  = "Oo"
$rules.Ồ  = "Oo"
$rules.Ổ  = "Oo"
$rules.Ỗ  = "Oo"
$rules.Ộ  = "Oo"
$rules.Ớ  = "Ow"
$rules.Ờ  = "Ow"
$rules.Ở  = "Ow"
$rules.Ỡ  = "Ow"
$rules.Ợ  = "Ow"
$rules.Ý  = "Y"
$rules.Ỳ  = "Y"
$rules.Ỷ  = "Y"
$rules.Ỹ  = "Y"
$rules.Ỵ  = "Y"
$rules.ươ = "wo" 
$rules.ă  = "aw"
$rules.â  = "aa"
$rules.ư  = "w"
$rules.ê  = "ee"
$rules.ô  = "oo"
$rules.ơ  = "ow"
$rules.Ươ = "Wo"
$rules.Ă  = "Aw"
$rules.Â  = "Aa"
$rules.Ư  = "W"
$rules.Ê  = "Ee"
$rules.Ô  = "Oo"
$rules.Ơ  = "Ow"

$file  = Get-Content -Path $args[0]
# $file  = "Ước gì"
$sac   = [regex]'(ướ|á|ắ|ấ|í|ú|ứ|é|ế|ó|ố|ớ|ý|Ứo|Á|Ắ|Ấ|Í|Ú|Ứ|É|Ế|Ó|Ố|Ớ|Ý)(\w*)'
$huyen = [regex]'(ườ|à|ằ|ầ|ì|ù|ừ|è|ề|ò|ồ|ờ|ỳ|Ườ|À|Ằ|Ầ|Ì|Ù|Ừ|È|Ề|Ò|Ồ|Ờ|Ỳ)(\w*)'
$hoi   = [regex]'(ưở|ả|ẳ|ẩ|ỉ|ủ|ử|ẻ|ể|ỏ|ổ|ở|ỷ|Ưở|Ả|Ẳ|Ẩ|Ỉ|Ủ|Ử|Ẻ|Ể|Ỏ|Ổ|Ở|Ỷ)(\w*)'
$nga   = [regex]'(ưỡ|ã|ẵ|ẫ|ĩ|ũ|ữ|ẽ|ễ|õ|ỗ|ỡ|ỹ|Ưỡ|Ã|Ẵ|Ẫ|Ĩ|Ũ|Ữ|Ẽ|Ễ|Õ|Ỗ|Ỡ|Ỹ)(\w*)'
$nang  = [regex]'(ượ|ạ|ặ|ậ|ị|ụ|ự|ẹ|ệ|ọ|ộ|ợ|ỵ|Ượ|Ạ|Ặ|Ậ|Ị|Ụ|Ự|Ẹ|Ệ|Ọ|Ộ|Ợ|Ỵ)(\w*)'
$ngang = [regex]'(ươ|ă|â|ư|ê|ô|ơ|Ươ|Ă|Â|Ư|Ê|Ô|Ơ)(\w*)'

$ngang_cb = {
    $rules[$args[0].Groups[1].Value] + $args[0].Groups[2].Value
}
$sac_cb = {
    $rules[$args[0].Groups[1].Value] + $args[0].Groups[2].Value + 's'
}
$huyen_cb = {
    $rules[$args[0].Groups[1].Value] + $args[0].Groups[2].Value + 'f'
}
$hoi_cb = {
    $rules[$args[0].Groups[1].Value] + $args[0].Groups[2].Value + 'r'
}
$nga_cb = {
    $rules[$args[0].Groups[1].Value] + $args[0].Groups[2].Value + 'x'
}
$nang_cb = {
    $rules[$args[0].Groups[1].Value] + $args[0].Groups[2].Value + 'j'
}

Write-Progress -Activity "Bo dau sac" -PercentComplete 0
$file = $sac.Replace($file, $sac_cb)
Write-Progress -Activity "Bo dau huyen" -PercentComplete 17
$file = $huyen.Replace($file, $huyen_cb)
Write-Progress -Activity "Bo dau hoi" -PercentComplete 33
$file = $hoi.Replace($file, $hoi_cb)
Write-Progress -Activity "Bo dau nga" -PercentComplete 50
$file = $nga.Replace($file, $nga_cb)
Write-Progress -Activity "Bo dau huyen" -PercentComplete 67
$file = $nang.Replace($file, $nang_cb)
Write-Progress -Activity "Bo dau huyen" -PercentComplete 83
$file = $ngang.Replace($file, $ngang_cb)
$file = $file.Replace('đ', 'dd')
$file = $file.Replace('Đ', 'Dd')
Set-Content -Path "$args.converted.txt" -Value $file
echo "Xong"


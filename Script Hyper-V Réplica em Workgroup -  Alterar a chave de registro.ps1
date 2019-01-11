# Script Hyper-V Réplica em Workgroup -  Alterar a chave de registro - Créditos Gabriel Luiz - www.gabrielluiz.com ##

reg add “HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Virtualization\Replication” /v DisableCertRevocationCheck /d 1 /t REG_DWORD /f
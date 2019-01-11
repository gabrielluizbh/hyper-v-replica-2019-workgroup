# Script Hyper-V Réplica em Workgroup - Habilitando a inversão da replicação - Créditos Gabriel Luiz - www.gabrielluiz.com ##


# Teste de conexão Remota Powershell.


Enter-PSSession -ComputerName SR3.replicar.local # Execute este comando no Servidor SR4.

Enter-PSSession -ComputerName SR4.replicar.local # Execute este comando no Servidor SR3.



# Altere a Rede de Pública para Privada.


Get-NetConnectionProfile # Verifica em qual perfil de rede estar configurada atualmente.

Set-NetConnectionProfile -InterfaceAlias "Ethernet" -NetworkCategory Private # Altera a perfil da rede para privada.



# Habilitar o gerenciamento remoto.


Enable-PSRemoting

# Obervação:

# Este comando deve ser executado nos dois servidores.



# Habilita a delegação para o domínio especificado.


Get-WSManCredSSP  # Verfica a delegação.

Enable-WSManCredSSP -Role Client -DelegateComputer "*.replicar.local" # Adcionar o seguinte destino a delegação.

# Obervação:

# Este comando deve ser executado nos dois servidores.



# Adicionar o domínio ao hosts confiáveis.


Get-Item -Path WSMan:\localhost\Client\TrustedHosts # Verfica os hosts confiáveis.

Set-Item -Path WSMan:\localhost\Client\TrustedHosts -Value "*.replicar.local" # Adiciona o domínio especificado ao hosts confiáveis.

# Obervação:

# Este comando deve ser executado nos dois servidores.



# Adiciona a credencial especificada ao computador.


cmdkey /list # Lista as credenciais. 

cmdkey /add:SR3.replicar.local /user:Administrator /pass:@abc123 # Adiciona a credencial especificada ao servidor SR3.

cmdkey /add:SR4.replicar.local /user:Administrador /pass:@abc123 # Adiciona a credencial especificada ao servidor SR4.

# Obervações:

# Este comando deve ser executado nos dois servidores.
# No comando do servidor SR4 o nome do usuário estar como Administrador porque o Windows Server estar em português ao contrário do SR3 que está em inglês.



# Teste de conexão Remota Powershell ( Verficar se realemnte a configuração estar funcionando).

Enter-PSSession -ComputerName SR3.replicar.local # Execute este comando no servidor SR4.

Enter-PSSession -ComputerName SR4.replicar.local # Execute este comando no servidor SR3.
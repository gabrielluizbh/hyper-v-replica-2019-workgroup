# Script Hyper-V Réplica em Workgroup - Liberação das portas do Firewall para Replicação  - Créditos Gabriel Luiz - www.gabrielluiz.com ##


# Habilita as portas de replicação dos servidores.


Enable-NetfirewallRule -DisplayName "Ouvinte de HTTP da Réplica do Hyper-V (TCP-In)" # Português

Enable-NetFirewallRule -DisplayName "Ouvinte HTTPS da Réplica do Hyper-V (TCP-In)" # Português

Enable-NetfirewallRule -DisplayName "Hyper-V Replica HTTP Listener (TCP-In)" # Inglês

Enable-NetFirewallRule -DisplayName "Hyper-V Replica HTTPS Listener (TCP-In)" # Inglês


# Observação

# Este comando deve ser executado em cada servidor de Hyper-V Réplica.
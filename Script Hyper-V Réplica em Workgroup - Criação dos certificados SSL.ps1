# Script Hyper-V Réplica em Workgroup - Criação dos certificados SSL - Créditos Gabriel Luiz - www.gabrielluiz.com ##


New-SelfSignedCertificate -DnsName “SR3.contoso.local” –CertStoreLocation “cert:\LocalMachine\My” -TestRoot # Cria o certificado SSL para o servidor hostname SR3.

New-SelfSignedCertificate -DnsName “SR4.contoso.local” –CertStoreLocation “cert:\LocalMachine\My” -TestRoot # Cria o certificado SSL para o servidor hostname SR4.


# Observação

# Guarde o código Thumbprint gerado, pois o mesmo será utilizado na habilitação da replicação do servidor.

# Este comando deve ser executado apenas no primeiro servidor Hyper-V Réplica.
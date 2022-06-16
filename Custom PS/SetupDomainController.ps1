# Installeer domain services
Add-WindowsFeature AD-Domain-Services

# Upgrade naar domain controller en domain settings

Install-ADDSForest -DomainName test.local -InstallDNS
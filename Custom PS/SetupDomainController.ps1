# Hernoem de Host
Rename-Computer -NewName WIN2019DC

# Installeer domain services & Management tools
Add-WindowsFeature AD-Domain-Services
Add-WindowsFeature RSAT-Role-Tools

# Upgrade naar domain controller en domain settings
Install-ADDSForest -DomainName test.local -InstallDNS

# Root CA Install
Install-WindowsFeature ADCS-Cert-Authority -IncludeManagementTools
Install-AdcsCertificationAuthority -CAType StandaloneRootCA -CACommonName "WIN2019DC-CA" -CADistinguishedNameSuffix "DC=TEST,DC=LOCAL"-CryptoProviderName "RSA#Microsoft Software Key Storage Provider" -KeyLength 2048 -HashAlgorithmName SHA1 -ValidityPeriod Years -ValidityPeriodUnits 2 -DatabaseDirectory "C:\Windows\system32\certlog" -LogDirectory "C:\Windows\system32\CertLog" -Force 
# PSGallery trusted maken
Set-PSRepository -Name PSGallery -InstallationPolicy Trusted

#DBATools installeren
Install-Module dbatools

#DSC Modules installeren
Install-Module xFailoverCluster, SQLServerDSC
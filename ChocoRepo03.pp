# TODO figure out why
# https://github.com/opentable/puppet-windowsfeature
# doesn't work for 2008 and 2012
#
# http://msdn.microsoft.com/en-us/library/ee662309.aspx		Add-WindowsFeature cmdlet has been replaced
# http://msdn.microsoft.com/en-us/library/ee662310.aspx		Remove-WindowsFeature cmdlet has been replaced in Windows Server 2012
# 



# Note - installs Web-Mgmt-Tools AND Web-Mgmt-Console 




# ***TESTING***

windowsfeature { 'Web-Mgmt-Console': }

#class my_windows_features {
#  windowsfeature { 'Web-Mgmt-Console': }
#  windowsfeature { 'Telnet-Server': ensure => absent }
#}


#
#class my_other_windows_feature_implementation {
#  windowsfeature{'IIS':
#    feature_name => ['Web-Server',
#      'Web-WebServer',
#      'Web-Asp-Net45',
#      'Web-ISAPI-Ext',
#      'Web-ISAPI-Filter',
#      'NET-Framework-45-ASPNET',
#      'WAS-NET-Environment',
#      'Web-Http-Redirect',
#      'Web-Filtering',
#      'Web-Mgmt-Console',
#      'Web-Mgmt-Tools']
#    }
#  }
#



# *** NOTES ***

# works
# Get-WindowsFeature Web-Mgmt-Console | Where-Object {$_.Installed -match “True”} | Select-Object -Property Name

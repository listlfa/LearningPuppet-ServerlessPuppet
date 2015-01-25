# TODO figure out why
# https://github.com/opentable/puppet-windowsfeature
# doesn't work for 2008 and 2012
#
# http://msdn.microsoft.com/en-us/library/ee662309.aspx		Add-WindowsFeature cmdlet has been replaced
# http://msdn.microsoft.com/en-us/library/ee662310.aspx		Remove-WindowsFeature cmdlet has been replaced in Windows Server 2012
# 



# Note - installs Web-Mgmt-Tools AND Web-Mgmt-Console 




# ***TESTING***
class chocolatey_repository_local {
	#WINDOWS SETUP
	windowsfeature { 'Web-Server': }						# IIS
	
	windowsfeature { 'Web-Common-Http': }					# 
	windowsfeature { 'Web-Default-Doc': }					# 
	windowsfeature { 'Web-Static-Content': }				# 
	
	windowsfeature { 'Web-Health': }						# 
	windowsfeature { 'Web-Http-Logging': }					# 
	
	windowsfeature { 'Web-Performance': }					# 
	windowsfeature { 'Web-Stat-Compression': }				# 
	
	windowsfeature { 'Web-Security': }						# 
	windowsfeature { 'Web-Filtering': }						# 
	
	windowsfeature { 'Web-App-Dev': }						# 
	windowsfeature { 'NET-Framework-45-Features': }			# NET 4.5
	windowsfeature { 'Web-Net-Ext45': }						# NET 4.5
	windowsfeature { 'Web-Asp-Net45': }						# NET 4.5
	windowsfeature { 'Web-ISAPI-Ext': }						# ISAPI
	windowsfeature { 'Web-ISAPI-Filter': }					# ISAPI
	
	windowsfeature { 'Web-Mgmt-Tools': }					#
	windowsfeature { 'Web-Mgmt-Console': }					#
	
	
	#IIS SETUP
	file {[	"C:/Sites",
			"C:/Sites/NuGetRepo"]:
		ensure => "directory",
	}
	
	file { "C:/NuGetRepo":
		ensure => "directory",
	}
}

include chocolatey_repository_local

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

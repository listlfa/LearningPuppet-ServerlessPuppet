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
	windowsfeature { 'Web-Custom-Logging': }				# BP TEST
	windowsfeature { 'Web-Log-Libraries': }					# BP TEST
	windowsfeature { 'Web-Request-Monitor': }				# BP TEST
	windowsfeature { 'Web-Http-Tracing': }					# BP TEST
	
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
	
	
	
	
	#--		--		--		--		
	#IIS SETUP
	#--		--		--		--		
	
	#IIS Folders
	file {[	"C:/Sites",
			"C:/Sites/NuGetRepo"]:
		ensure => "directory",
	}
	
	file { "C:/NuGetRepo":
		ensure => "directory",
	}
	
	
	#IIS User Permissions
	acl { 'c:/Sites':
		purge       => 'true',
		permissions => [
			{ identity => 'Administrators', rights => ['full'] },
			{ identity => 'SYSTEM', rights => ['full'] },
			{ identity => 'IUSR', rights => ['write','read','execute'] },
			{ identity => 'IIS AppPool\DefaultAppPool', rights => ['write','read','execute'] },
		],
		inherit_parent_permissions => 'false',
	}

	acl { 'C:\NuGetRepo':
		purge       => 'true',
		permissions => [
			{ identity => 'IUSR', rights => ['write','read','execute'] },
			{ identity => 'IIS AppPool\DefaultAppPool', rights => ['write','read','execute'] },
		],
		inherit_parent_permissions => 'true',
	}	
	
	
	#IIS Website and Application
	iis::manage_app_pool {'DefaultAppPool':
      enable_32_bit           => false,
      managed_runtime_version => 'v4.0',
    }

    iis::manage_site {'Default Web Site':
      site_path     => 'C:\sites',
      port          => '80',
      ip_address    => '*',
      host_header   => 'Default Web Site',
      app_pool      => 'DefaultAppPool'
    }

    iis::manage_virtual_application {'NuGet':
      site_name   => 'NuGet',
      site_path   => 'C:\Sites\NuGetRepo',
      app_pool    => 'DefaultAppPool'
    }
}

include chocolatey_repository_local




# *** NOTES ***

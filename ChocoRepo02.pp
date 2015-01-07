class my_windows_features {
  windowsfeature { 'Web-Asp-Net': }
  windowsfeature { 'Web-Net-Ext': }
  windowsfeature { 'Web-ISAPI-Ext': }
  windowsfeature { 'Web-ISAPI-Filter': }
  windowsfeature { 'Web-Mgmt-Tools': }
  windowsfeature { 'Web-Mgmt-Console': }
  windowsfeature { 'Telnet-Server': ensure => absent }
}

class my_other_windows_feature_implementation {
  windowsfeature{'IIS':
    feature_name => ['Web-Server',
      'Web-WebServer',
      'Web-Asp-Net45',
      'Web-ISAPI-Ext',
      'Web-ISAPI-Filter',
      'NET-Framework-45-ASPNET',
      'WAS-NET-Environment',
      'Web-Http-Redirect',
      'Web-Filtering',
      'Web-Mgmt-Console',
      'Web-Mgmt-Tools']
    }
  }

  

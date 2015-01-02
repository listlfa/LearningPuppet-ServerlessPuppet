class WinFeatures_IIS {
  windowsfeature { 'Web-Server': }
  windowsfeature { 'Web-WebServer': }
  windowsfeature { 'Web-Common-Http': }
  windowsfeature { 'Web-Default-Doc': }
  windowsfeature { 'Web-Dir-Browsing': }
  windowsfeature { 'Web-Http-Errors': }
  windowsfeature { 'Web-Static-Content': }
  windowsfeature { 'Web-Health': }
  windowsfeature { 'Web-Http-Logging': }
  windowsfeature { 'Web-Custom-Logging': }  
  windowsfeature { 'Web-Performance': }
  windowsfeature { 'Web-Stat-Compression': }
  windowsfeature { 'Web-Security': }
  windowsfeature { 'Web-Filtering': }
  windowsfeature { 'Web-App-Dev': }
  windowsfeature { 'Web-Net-Ext45': }
  windowsfeature { 'Web-ISAPI-Ext': }
  windowsfeature { 'Web-ISAPI-Filter': }
  windowsfeature { 'Web-Mgmt-Tools': }
  windowsfeature { 'Web-Mgmt-Console': }
}



    include 'WinFeatures_IIS'


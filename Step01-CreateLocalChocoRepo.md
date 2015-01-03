using
http://blog.ittoby.com/2014/07/setup-your-own-chocoloateynuget.html

nope
http://mbrownnyc.wordpress.com/2013/09/06/create-your-own-nuget-server-to-serve-packages/
* Install Choclately
  * iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))
  * Bypass ExecutionPolicy for this session (safer) with
    * Set-ExecutionPolicy Bypass -Scope Process
    * per https://blog.netspi.com/15-ways-to-bypass-the-powershell-execution-policy/
  * Bypass ExecutionPolicy permenantly (easier) with
    * Set-ExecutionPolicy Unrestricted 
* Install Puppet
  * choco install puppet 
* Setup Puppet
  * puppet module install opentable-windows_feature
  * Windows Roles anf features etc
    * 2008
      * http://technet.microsoft.com/en-us/library/ee344834.aspx
    * 2012
      * http://technet.microsoft.com/en-us/library/hh831809.aspx
      * servermanager
        * list commands
          * get-command -module servermanager
        * what is and is not installed
          * Get-WindowsFeature
        * see more
         * http://yungchou.wordpress.com/2014/01/08/windows-server-2012-r2-installation-options-and-features-on-demand-part-3-of-5/
    * 

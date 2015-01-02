## Step 1
### Create your local choco repo to install (almost) everything from

1. Install 2012 R2 and apply all updates
2. Install chocolatey (from cmd.exe)
  * @powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin
3. Install GitHub client
 * choco install githubforwindows 
4. 

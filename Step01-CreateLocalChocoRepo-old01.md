## Step 1
### Create your local choco repo to install (almost) everything from

* Install 2012 R2 and apply all updates
* Install chocolatey (from cmd.exe)
```
@powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin
```
* Install GitHub client
```
choco install githubforwindows 
```
* Clone this GitHub repo
* Get public choco files
  * wget http://chocolatey.org/api/v2/package/spacesniffer/ -Outfile spacesniffer.nupkg
* Install VS 2012
  * alternative, 2013
    * choco install visualstudio2013expressweb 
* Open solution file from github repo
* Apply VS Updates/Extensions

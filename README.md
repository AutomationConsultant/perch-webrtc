Perch WebRTC Project
============

##Install depot_tools

Check depot_tools out
git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git

Add depot_tools to your path
$ export PATH="$PATH":'pwd'/depot_tools

##Compile and Execute

build_{OSX,Simulator,iOS}.sh

##Install app
Set up your provisioning 

Use 'brew install idevicesinstaller' OR

XCode Add application


============

##Optional
###Set up External Repos

gclient config http://webrtc.googlecode.com/svn/trunk

###Resync To Latest

gclient sync --force

Ensure that .gclient includes ['ios','mac']

gclient sync

============

Make sure you have only one 'iPhoneDeveloper' in your keychain.

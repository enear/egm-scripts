powershell -Command "(gc D:\ikernel\dist\bin\wrapper.conf) -replace '#wrapper.java.additional.4=-Xdebug', 'wrapper.java.additional.4=-Xdebug' | Out-File dist\bin\wrapper.conf"
powershell -Command "(gc D:\ikernel\dist\bin\wrapper.conf) -replace '#wrapper.java.additional.5=-Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=5005', 'wrapper.java.additional.5=-Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=5005' | Out-File dist\bin\wrapper.conf"


7z e D:\ikernel\dist\lib\level3\ikernel-core-config-999733.jar -onet\inspiredbroadcast\legion\ikernel\core net\inspiredbroadcast\legion\ikernel\core\coreconfigconf.properties -r

powershell -Command "(gc net\inspiredbroadcast\legion\ikernel\core\coreconfigconf.properties) -replace 'net.inspiredbroadcast.legion.ikernel.service.SoftwareVerification.VERIFY_IKERNEL=TRUE', 'net.inspiredbroadcast.legion.ikernel.service.SoftwareVerification.VERIFY_IKERNEL=FALSE' | Out-File net\inspiredbroadcast\legion\ikernel\core\coreconfigconf.properties"
powershell -Command "(gc net\inspiredbroadcast\legion\ikernel\core\coreconfigconf.properties) -replace 'net.inspiredbroadcast.legion.ikernel.service.SoftwareVerification.VERIFY_UNIT_CONFIG=TRUE', 'net.inspiredbroadcast.legion.ikernel.service.SoftwareVerification.VERIFY_UNIT_CONFIG=FALSE' | Out-File net\inspiredbroadcast\legion\ikernel\core\coreconfigconf.properties"
powershell -Command "(gc net\inspiredbroadcast\legion\ikernel\core\coreconfigconf.properties) -replace 'net.inspiredbroadcast.legion.ikernel.service.SoftwareVerification.VERIFY_CONTENT=TRUE', 'net.inspiredbroadcast.legion.ikernel.service.SoftwareVerification.VERIFY_CONTENT=FALSE' | Out-File net\inspiredbroadcast\legion\ikernel\core\coreconfigconf.properties"
powershell -Command "(gc net\inspiredbroadcast\legion\ikernel\core\coreconfigconf.properties) -replace 'net.inspiredbroadcast.legion.ikernel.service.SoftwareVerification.VERIFY_OTHER_PROGRAM_MEMORY=TRUE', 'net.inspiredbroadcast.legion.ikernel.service.SoftwareVerification.VERIFY_OTHER_PROGRAM_MEMORY=FALSE' | Out-File net\inspiredbroadcast\legion\ikernel\core\coreconfigconf.properties"

powershell -Command "(gc net\inspiredbroadcast\legion\ikernel\core\coreconfigconf.properties) -replace 'net.inspiredbroadcast.legion.ikernel.service.SoftwareVerification.VHD_BASED_SOFTWARE_VERIFICATION=TRUE', 'net.inspiredbroadcast.legion.ikernel.service.SoftwareVerification.VHD_BASED_SOFTWARE_VERIFICATION=FALSE' | Out-File net\inspiredbroadcast\legion\ikernel\core\coreconfigconf.properties"

7z a -tzip "D:\ikernel\dist\lib\level3\ikernel-core-config-999733.jar" "net\inspiredbroadcast\legion\ikernel\core\coreconfigconf.properties"

rmdir /S /Q net

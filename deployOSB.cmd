@echo Export project from eclipse
java ^
  -Dweblogic.home=c:\oracle\middleware\wlserver_10.3 ^
  -Dosb.home=c:\oracle\middleware\Oracle_OSB1 ^
  -Dosgi.bundlefile.limit=500 ^
  -Dharvester.home=c:\oracle\middleware\Oracle_OSB1\harvester ^
  -Dosgi.nl=en_US ^
  -Dsun.lang.ClassLoader.allowArraySyntax=true ^
  -jar c:\Oracle\OEPE\oepe_11gR1PS4\plugins\org.eclipse.equinox.launcher_1.1.1.R36x_v20101122_1400.jar ^
  -data c:\src\osb\notsvn ^
  -application com.bea.alsb.core.ConfigExport ^
  -configProject "OSB Configuration 1" ^
  -configJar c:\src\osb\test_sbconfig.jar ^
  -configSubProjects "OSB Project 1" ^
  -includeDependencies true

@echo Deploy 'import' to Service Bus
c:\oracle\middleware\oracle_common\common\bin\wlst import.py import.properties


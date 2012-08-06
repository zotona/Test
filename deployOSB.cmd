@echo Export project from eclipse
java ^
  -Dweblogic.home=D:\oracle\middleware\wlserver_10.3 ^
  -Dosb.home=D:\oracle\middleware\Oracle_OSB1 ^
  -Dosgi.bundlefile.limit=500 ^
  -Dharvester.home=D:\oracle\middleware\Oracle_OSB1\harvester ^
  -Dosgi.nl=en_US ^
  -Dsun.lang.ClassLoader.allowArraySyntax=true ^
  -jar D:\Oracle\Middleware\oepe_11.1.1.8.0\plugins\org.eclipse.equinox.launcher_1.2.0.v20110502.jar^
  -data D:\src\osb\notsvn ^
  -application com.bea.alsb.core.ConfigExport ^
  -configProject "OSB Configuration 1" ^
  -configJar D:\src\osb\test_sbconfig.jar ^
  -configSubProjects "OSB Project 1" ^
  -includeDependencies true

@echo Deploy 'import' to Service Bus
D:\oracle\middleware\oracle_common\common\bin\wlst import.py import.properties


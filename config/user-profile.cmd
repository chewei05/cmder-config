:: use this file to run your own startup commands
:: use  in front of the command to prevent printing the command

:: call "%GIT_INSTALL_ROOT%/cmd/start-ssh-agent.cmd"
:: set "PATH=%CMDER_ROOT%\vendor\whatever;%PATH%"

@echo off
@REM ----------------------------------------------------------------------------
@REM  My Custom Environment Variables - Set PHP, Apache, MySQL & Composer Folder
@REM ----------------------------------------------------------------------------
SET UniformServerDir=C:\UniServerZ
SET UniformServerCoreDir=%UniformServerDir%\core
SET PhpDir=%UniformServerCoreDir%\php70
SET MysqlDir=%UniformServerCoreDir%\mysql\bin
SET ApacheDir=%UniformServerCoreDir%\apache2\bin
SET ComposerVendorBinDir=%APPDATA%\Composer\vendor\bin
PATH=%PhpDir%;%MysqlDir%;%ApacheDir%;%ComposerVendorBinDir%;%PATH%

@REM -------------------------------------------------
@REM  Goto Uniform Server Apache Virtual Hosts Folder
@REM -------------------------------------------------
cd /d "%UniformServerDir%\vhosts"

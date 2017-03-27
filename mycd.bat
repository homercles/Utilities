@echo off
:: https://superuser.com/questions/129969/navigate-to-previous-directory-in-windows-command-prompt
:: Set doskey cd=mycd $*  to use


@echo off
if '%*'=='' cd & exit /b
if '%*'=='-' (
    echo "In Here"
	cd /d %OLDPWD%
    set OLDPWD=%cd%
) else (
    cd /d %*
    if not errorlevel 1 set OLDPWD=%cd%
)
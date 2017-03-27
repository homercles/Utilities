:: http://technet.microsoft.com/en-us/library/bb490894.aspx
:: F7     = history
:: Alt+F7 = history -c
:: F8     = Ctrl+R
:: Use & to run multiple commands e.g.: command1 & command2
:: Add this file as a REG_SZ/REG_EXPAND_SZ registry variables in HKEY_LOCAL_MACHINE\Software\Microsoft\Command or Processor\AutoRun HKEY_CURRENT_USER\Software\Microsoft\Command Processor\AutoRun
@echo off

rem sourced from https://gist.github.com/PierreMage/6874814

:: Linux commands
doskey alias   = doskey $*
doskey cat     = type $*
doskey clear   = cls
doskey cp      = copy $*
doskey cpr     = xcopy $*
doskey grep    = find $*
doskey history = doskey /history
doskey kill    = taskkill /PID $*
doskey ls      = dir $*
doskey man     = help $*
doskey mv      = move $*
doskey ps      = tasklist $*
doskey pwd     = cd
doskey rm      = del $*
doskey rmr     = deltree $*
doskey sudo    = runas /user:administrator $*

:: Easier navigation
rem alias o      = start $*
rem alias oo     = start .
doskey ..    = cd ..\$*
doskey ...   = cd ..\..\$*
doskey ....  = cd ..\..\..\$*
doskey ..... = cd ..\..\..\..\$*

rem  doskey cd=mycd $*




:: Maven
:: Requires M2_HOME\bin to be added to the Path environment variable
:: -rf --resume-from <project>
:: doskey mci  = mvn clean install
:: doskey mcis = mvn clean install -Dmaven.test.skip
:: doskey mcp  = mvn clean package
:: doskey mcps = mvn clean prepare-package war:exploded -Dmaven.test.skip
:: doskey mct  = mvn clean test
:: doskey mvns = mvn $* -Dmaven.test.skip=true

:: User specific doskeys
:: Add your own doskeys below

:: Custom
@echo off
DOSKEY ls=dir
DOSKEY sublime="C:\Program Files\Sublime Text 3\sublime_text.exe" $*
rem DOSKEY vi="C:\Program Files (x86)\Vim\vim80\gvim.exe" $*
DOSKEY vi="C:\Program Files (x86)\WinVi\WinVi32.exe"
DOSKEY vim="C:\Program Files (x86)\Vim\vim80\gvim.exe" $*
DOSKEY np="C:\Program Files (x86)\Notepad++" $*
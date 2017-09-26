@echo off
net session > nul 2>&1

if %ERRORLEVEL% neq 0 (
    echo 管理者として実行してください。 >&2
    exit /B 1
)
set /P X=.gitconfigの作成		<nul
mklink %CYGWIN_HOME%\.gitconfig %CYGWIN_HOME%\dotfiles\git_global\.gitconfig
set /P X=.bash_profileの作成		<nul
mklink %CYGWIN_HOME%\.bash_profile %CYGWIN_HOME%\dotfiles\.bash_profile
set /P X=.bashrcの作成			<nul
mklink %CYGWIN_HOME%\.bashrc %CYGWIN_HOME%\dotfiles\.bashrc
set /P X=.bash_logoutの作成		<nul
mklink %CYGWIN_HOME%\.bash_logout %CYGWIN_HOME%\dotfiles\.bash_logout
set /P X=.minttyrcの作成			<nul
mklink %CYGWIN_HOME%\.minttyrc %CYGWIN_HOME%\dotfiles\.minttyrc
set /P X=.tmux.confの作成		<nul
mklink %CYGWIN_HOME%\.tmux.conf %CYGWIN_HOME%\dotfiles\.tmux.conf
set /P X=.vimrcの作成			<nul
mklink %CYGWIN_HOME%\.vimrc %CYGWIN_HOME%\dotfiles\.vimrc
set /P X=.vimの作成			<nul
mklink /D %CYGWIN_HOME%\.vim %CYGWIN_HOME%\dotfiles\.vim

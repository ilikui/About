cls
@ECHO OFF
CLS
color 0a

GOTO MENU
:MENU
ECHO.
ECHO.               =-=-=-=-=批处理菜单示例=-=-=-=-=
ECHO.
ECHO.                       1  执行命令a
ECHO.
ECHO.                       2  执行命令b
ECHO.
ECHO.                       3  执行命令c
ECHO.
ECHO.                       4  退   出
ECHO.
ECHO.
ECHO.
echo.                请输入选择项目的序号：
set /p  ID=
if "%id%"=="1"  goto cmd1

if "%id%"=="2" goto cmd2

if "%id%"=="3" goto cmd3

IF "%id%"=="4"  exit
PAUSE

:cmd1
color 0b
echo 执行命令a
echo 进入section1

echo  1.life
echo  2.tech
echo.                请输入选择项目的序号：
set /p  ID=
if "%id%"=="1"  goto cmdsection1

if "%id%"=="2" goto cmdsection2

if "%id%"=="3" goto cmdsection3

IF "%id%"=="4"  exit
PAUSE
goto MENU

:cmdsection1

echo  1.life
echo  2.tech

echo  ######################
set /p  category=请输入分类:


if %category% == "1" goto createlife

if %category% == "2" goto createtech
:createlife
set /p  content=请输入标题:
hugo new content\section1\life\%content%
:createtech

set /p  content=请输入标题:
hugo new content\section1\tech\%content%

:cmdsection2

:cmdsection3




:cmd2

echo 执行命令b
echo 操作注册表的命令(reg add 主键 值)
GOTO MENU

:cmd3
echo 执行命令c
echo 操作系统服务命令(sc)
GOTO MENU
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
set /p  ID= 请输入选择项目的序号：
if "%id%"=="1"  goto cmd1

if "%id%"=="2" goto cmd2

if "%id%"=="3" goto cmd3


:cmd1
color 0b
echo 执行命令
echo 进入section

echo  1.section1
echo  2.section2
echo  3.section3
               
set /p  ID=请输入选择项目的序号：
if "%id%"=="1"  goto cmdsection1

if "%id%"=="2"  goto cmdsection2

if "%id%"=="3"  goto cmdsection3


:cmdsection1


echo  1.life
echo  2.tech
echo  3.km
echo  4.exit
echo  ######################

set /p  category=请输入分类:

if %category%=="1" goto createlife

if %category%=="2" goto createtech

if %category%=="3" goto createkm



:createlife

set /p  content=请输入标题:
hugo new content\section1\life\%content%

:createtech

set /p  content=请输入标题:
hugo new content\section1\tech\%content%

:createkm
set /p  content=请输入标题:
hugo new content\section1\km\%content%


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
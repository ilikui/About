cls
@ECHO OFF
CLS
color 0a

GOTO MENU
:MENU
ECHO.
ECHO.               =-=-=-=-=������˵�ʾ��=-=-=-=-=
ECHO.
ECHO.                       1  ִ������a
ECHO.
ECHO.                       2  ִ������b
ECHO.
ECHO.                       3  ִ������c
ECHO.
ECHO.                       4  ��   ��
ECHO.
ECHO.
ECHO.
echo.                ������ѡ����Ŀ����ţ�
set /p  ID=
if "%id%"=="1"  goto cmd1

if "%id%"=="2" goto cmd2

if "%id%"=="3" goto cmd3

IF "%id%"=="4"  exit
PAUSE

:cmd1
color 0b
echo ִ������a
echo ����section1

echo  1.life
echo  2.tech
echo.                ������ѡ����Ŀ����ţ�
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
set /p  category=���������:


if %category% == "1" goto createlife

if %category% == "2" goto createtech
:createlife
set /p  content=���������:
hugo new content\section1\life\%content%
:createtech

set /p  content=���������:
hugo new content\section1\tech\%content%

:cmdsection2

:cmdsection3




:cmd2

echo ִ������b
echo ����ע��������(reg add ���� ֵ)
GOTO MENU

:cmd3
echo ִ������c
echo ����ϵͳ��������(sc)
GOTO MENU
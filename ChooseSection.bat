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
set /p  ID= ������ѡ����Ŀ����ţ�
if "%id%"=="1"  goto cmd1

if "%id%"=="2" goto cmd2

if "%id%"=="3" goto cmd3


:cmd1
color 0b
echo ִ������
echo ����section

echo  1.section1
echo  2.section2
echo  3.section3
               
set /p  ID=������ѡ����Ŀ����ţ�
if "%id%"=="1"  goto cmdsection1

if "%id%"=="2"  goto cmdsection2

if "%id%"=="3"  goto cmdsection3


:cmdsection1


echo  1.life
echo  2.tech
echo  3.km
echo  4.exit
echo  ######################

set /p  category=���������:

if %category%=="1" goto createlife

if %category%=="2" goto createtech

if %category%=="3" goto createkm



:createlife

set /p  content=���������:
hugo new content\section1\life\%content%

:createtech

set /p  content=���������:
hugo new content\section1\tech\%content%

:createkm
set /p  content=���������:
hugo new content\section1\km\%content%


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
@echo off
cd %~dp0
set INSTALLLATEX=main
set PDF=%INSTALLLATEX%.pdf
set TEMP=%INSTALLLATEX%.xdv %INSTALLLATEX%.aux %INSTALLLATEX%.log %INSTALLLATEX%.toc %INSTALLLATEX%.out %INSTALLLATEX%.synctex.gz

if "%1"=="clean" goto clean

set TEX=xelatex
set MODE=-synctex=1
set NOPDFMODE=-synctex=1 --no-pdf

%TEX% %NOPDFMODE% %INSTALLLATEX%
%TEX% %MODE% %INSTALLLATEX%
exit /B

:clean
del %TEMP%
del %PDF%
exit /B

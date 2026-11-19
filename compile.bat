@echo off
set BISON_PKGDATADIR=C:\Progra~2\GnuWin32\share\bison
bison -d parser.y
flex lexer.l
gcc lex.yy.c parser.tab.c -o tac_gen.exe
if %ERRORLEVEL% equ 0 (
    echo Compilation successful! Run tac_gen.exe to start.
) else (
    echo Compilation failed.
)

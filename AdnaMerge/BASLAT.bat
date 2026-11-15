@echo off
setlocal
rem Adna merge studio: RStudio olmadan baslatma / start without RStudio
cd /d "%~dp0"
title Adna merge studio v3.17
set "PROG=Adna_merge_studio_v3.17_by_mozy70.R"
if not exist "%PROG%" goto yok

rem Rscript: once PATH, sonra kayit defteri, sonra kurulum klasorleri
set "RS="
for /f "delims=" %%i in ('where Rscript.exe 2^>nul') do if not defined RS set "RS=%%i"
if not defined RS call :kayit HKLM 64
if not defined RS call :kayit HKCU 64
if not defined RS call :kayit HKLM 32
if not defined RS call :kayit HKCU 32
if not defined RS call :klasor "%ProgramFiles%\R"
if not defined RS call :klasor "%LOCALAPPDATA%\Programs\R"
if not defined RS goto r_yok

echo Rscript: %RS%
echo Program aciliyor; kapatmak icin bu pencereyi kapatin.
echo The program is opening; close this window to stop it.
echo.
"%RS%" -e "p = c('shiny', 'bslib', 'DT', 'shinyFiles')" ^
 -e "u = path.expand(Sys.getenv('R_LIBS_USER'))" ^
 -e "if (nzchar(u)) { dir.create(u, recursive = TRUE, showWarnings = FALSE); .libPaths(c(u, .libPaths())) }" ^
 -e "e = p[vapply(p, requireNamespace, logical(1), quietly = TRUE) == FALSE]" ^
 -e "if (length(e)) { message('Eksik paketler kuruluyor / Installing missing packages: ', paste(e, collapse = ', ')); install.packages(e, lib = .libPaths()[1], repos = 'https://cloud.r-project.org') }" ^
 -e "e = p[vapply(p, requireNamespace, logical(1), quietly = TRUE) == FALSE]" ^
 -e "if (length(e)) stop('Kurulamayan paketler / Packages that could not be installed: ', paste(e, collapse = ', '), call. = FALSE)" ^
 -e "shiny::runApp('%PROG%', launch.browser = TRUE)"
if errorlevel 1 goto hata
exit /b 0

:yok
echo %PROG% bu klasorde yok / is not in this folder.
echo BASLAT.bat program dosyasinin yaninda durmalidir.
echo BASLAT.bat must sit next to the program file.
goto hata

:r_yok
echo R bulunamadi / R not found.
echo R'i https://cran.r-project.org adresinden kurun.
echo Install R from https://cran.r-project.org
goto hata

:hata
echo.
echo Bir tusa basin / Press a key.
pause >nul
exit /b 1

:kayit
for /f "tokens=2,*" %%a in ('reg query "%~1\Software\R-core\R" /v InstallPath /reg:%~2 2^>nul ^| find "InstallPath"') do if exist "%%b\bin\Rscript.exe" set "RS=%%b\bin\Rscript.exe"
exit /b 0

:klasor
for /d %%d in ("%~1\R-*") do if exist "%%d\bin\Rscript.exe" set "RS=%%d\bin\Rscript.exe"
exit /b 0

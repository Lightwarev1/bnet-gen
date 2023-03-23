@echo off 
cd /d %~dp0
:MAIN
if "%~1"=="-FIXED_CTRL_C" (
   REM Remove the -FIXED_CTRL_C parameter
   SHIFT
) ELSE (
   REM Run the batch with <NUL and -FIXED_CTRL_C
   CALL <NUL %0 -FIXED_CTRL_C %*
   GOTO :EOF
)
title Generator
cls
pip install -r "%~dp0uwu.txt"
cls
timeout 1
cls
python "%~dp0main.py" 
goto DONE
:DONE
echo Script ended
pause...
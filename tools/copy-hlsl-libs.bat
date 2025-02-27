@echo off
setlocal

set SOURCE_DIR=%~1
set TARGET_DIR=%~2
set PLATFORM=%~3

robocopy "../../external/slang-binaries/bin/%PLATFORM%" "%TARGET_DIR%" d3dcompiler_47.dll /r:0 >nul

robocopy "%SOURCE_DIR%" "%TARGET_DIR%" dxcompiler.dll    /xn /r:0 >nul
robocopy "%SOURCE_DIR%" "%TARGET_DIR%" dxil.dll          /xn /r:0 >nul

exit /b 0

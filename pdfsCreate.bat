@echo off
:: 设置代码页为UTF-8（65001）
chcp 65001 >nul

:: 获取当前脚本所在目录
set "scriptDir=%~dp0"

:: 设置源目录和目标目录
set "sourceDir=%scriptDir%logs"
set "targetDir=%scriptDir%pdfs"

:: 创建目标目录，如果不存在的话
if not exist "%targetDir%" (
    mkdir "%targetDir%"
)

:: 复制PDF文件，如果有重复则覆盖
xcopy "%sourceDir%\*.pdf" "%targetDir%" /Y /S

:: 输出操作完成信息
echo PDF files have been copied to %targetDir%.
pause
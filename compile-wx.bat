@echo off
echo ===== 开始编译微信小程序 =====
echo 当前目录: %cd%

REM 检查node_modules是否存在
if not exist node_modules (
  echo 正在安装依赖...
  npm install
)

REM 编译项目到微信小程序
echo 正在编译项目到微信小程序...
npm run dev:mp-weixin

echo ===== 编译完成 =====
echo 请在微信开发者工具中打开以下目录:
echo %cd%\dist\dev\mp-weixin
echo.
echo 然后在微信开发者工具中输入路径 pages/teacher/index 来访问教师页面
echo.
pause

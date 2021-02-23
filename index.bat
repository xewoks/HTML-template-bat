@ECHO off
title Language templates
cls
:start
ECHO.
ECHO 1. HTML-template
ECHO 2. Rust
ECHO 3. Cpp
set choice=
set /p choice=Type the number to print text.
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto html
if '%choice%'=='2' goto rust
if '%choice%'=='3' goto Cpp
ECHO "%choice%" is not valid, try again
ECHO.
goto start
:html
md css
md js
md img
echo  ^<!doctype html^> >> index.html
echo  ^<html lang="en"^> >> index.html
echo  ^<head^> >> index.html
echo  ^<meta charset="UTF-8"^> >> index.html
echo  ^<title^> >> index.html
echo  ^</title^> >> index.html
echo  ^</head^> >> index.html
echo  ^<body^> >> index.html
echo  ^</body^> >> index.html
echo  ^</html^> >> index.html
echo  >>css\style.css
echo  >>js\main.js
goto end
:rust
md src
echo  >> src\main.rs
echo  >> cargo.toml
echo  fn main() >>src\main.rs
echo  println!("Hello, world!"); >>src\main.rs

goto end
:Cpp
echo  >> main.cpp
goto end
:end
pause
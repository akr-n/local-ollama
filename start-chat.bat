@echo off
title Ollama Chat Server
cd /d "%~dp0"
echo Starting Ollama Chat Server...
echo.
echo Open http://localhost:8080/chat.html in your browser
echo Press Ctrl+C to stop
echo.
start http://localhost:8080/chat.html
python server.py
pause

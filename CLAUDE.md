# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Local Ollama chat web interface - a single-page application for interacting with local Ollama LLM models. The project consists of two files:
- `chat.html` - Complete frontend (HTML, CSS, JavaScript in one file)
- `server.py` - Simple Python HTTP server to serve the static files

## Running the Application

```bash
python server.py
```

Then open http://localhost:8080/chat.html in your browser.

The application connects to an Ollama server (default: `http://192.168.4.187:11434`). The server URL is configurable in the UI and persisted to localStorage.

## Architecture

**Frontend-only architecture**: All logic is in `chat.html`. The Python server is just a static file server with no backend logic.

**Key frontend systems:**
- **Ollama API integration**: Uses `/api/tags` (list models), `/api/show` (model info), `/api/chat` (streaming chat)
- **Streaming**: Real-time token streaming with cursor animation during generation
- **Chat persistence**: localStorage-based chat history with save/load/delete
- **Context tracking**: Displays token usage, available context, generation speed, and time
- **Model management**: Auto-detects installed models, remembers selection, auto-fetches context length

**localStorage keys:**
- `ollama-chat-history` - Array of saved chat sessions
- `ollama-selected-model` - Last selected model name
- `ollama-server-url` - Configured Ollama server URL

## Dependencies

Frontend loads from CDN:
- marked.js - Markdown rendering
- highlight.js - Code syntax highlighting

# Pluma 🪶

_Your discreet, feather-light AI desktop copilot for meetings, interviews, and live conversations._  
_Tu copiloto de IA invisible y ultra liviano para reuniones, entrevistas y conversaciones en vivo._  
_Seu copiloto de IA invisível e ultra leve para reuniões, entrevistas e conversas em tempo real._

---

## 🌎 Overview / Visión General / Visão Geral

**Pluma** is a high-performance desktop HUD engineered with **Tauri v2 + React + TypeScript + Rust**. It floats seamlessly over your active workflow, listens to live audio, captures on-screen context, and delivers instant, intelligent cues without clutter or detection.

- **🪶 Feather-Light:** Minimal memory and CPU footprint.
- **🕶️ Invisible Stealth:** Stays excluded from screen shares and meeting recordings (Zoom, Google Meet, Microsoft Teams).
- **🔒 Privacy-First:** 100% local SQLite storage for your chat history and meeting transcripts. Connect your own API keys (OpenAI, Anthropic Claude, Groq, Gemini) or run completely offline with **local Ollama**.
- **🌐 Trilingual Core:** Native prompt architectures and response formatting optimized for **English**, **Español**, and **Português**.

---

## ⚡ Key Features / Características Clave / Recursos Principais

### 1. 🎧 Listen Mode (Modo Escucha / Modo Escuta)
- Transcribes system audio & microphone live.
- Real-time speaker separation and smart conversational cue cards.
- Pre-loaded executive prompts for **Sales Negotiation**, **Technical Interviews**, and **Multi-language Translation (ES / PT / EN)**.
- Quick action chips for instant follow-up questions, objection handling, and fact-checking.

### 2. 💬 Ask Mode (Modo Consulta)
- Instant floating HUD summonable with global keyboard shortcuts (`Cmd+Shift+Space` / `Ctrl+Shift+Space`).
- Screenshot capture & OCR: drag-select any window or region to ask questions about code, charts, or slides.
- File attachment support for context grounding.
- Streamed Markdown answers with LaTeX math, code highlighting, and mermaid diagrams.

### 3. 🔌 Multi-Provider AI Engine
- **Local Ollama:** Zero latency, 100% local privacy (`http://localhost:11434`).
- **Cloud Providers:** OpenAI (GPT-4o), Anthropic (Claude 3.5 Sonnet), Groq (Llama 3 & Whisper), Google Gemini, Perplexity, OpenRouter, Mistral, Cohere.
- **Speech-to-Text (STT):** Groq Whisper (ultra-fast transcription), OpenAI Whisper, Deepgram, Azure Speech, Google Speech.

---

## 🇪🇸 En Español

**Pluma** es el asistente de escritorio definitivo para profesionales y fundadores en América Latina y España:
- **Reuniones Ejecutivas:** Respuestas y argumentos clave en tiempo real durante llamadas de ventas y negociación.
- **Entrevistas Laborales:** Asesoría estructurada con el método STAR al instante.
- **Totalmente Privado:** Tus audios, capturas y conversaciones nunca se comparten con terceros. Compatible con modelos locales de Ollama.

---

## 🇧🇷 Em Português

**Pluma** é o copiloto desktop definitivo para reuniões, negociações e entrevistas no Brasil e Portugal:
- **Reuniões e Vendas:** Respostas estratégicas, contorno de objeções e resumos executivos em tempo real.
- **Entrevistas de Emprego:** Sugestões estruturadas e argumentos convincentes durante conversas ao vivo.
- **Privacidade Absoluta:** Seus dados e transcrições ficam salvos localmente na sua máquina. Suporte a Ollama local e chaves próprias.

---

## 🚀 Getting Started & Development

### Prerequisites
- **Node.js**: v18+ (Node 22 recommended)
- **Rust toolchain**: `cargo`, `rustc` (latest stable)
- **Linux dependencies** (if building on Linux): `libwebkit2gtk-4.1-dev`, `build-essential`, `libssl-dev`, `libasound2-dev`, `libpulse-dev`

### Installation & Run

```bash
# Clone repository
git clone git@github.com:hudsonargollo/pluma.git
cd pluma

# Install frontend dependencies
npm install

# Run Vite dev server
npm run dev

# Run Tauri desktop app in dev mode
npm run tauri dev

# Build production bundle
npm run build
npm run tauri build
```

---

## ⌨️ Default Keyboard Shortcuts

| Action | macOS | Windows / Linux |
| :--- | :--- | :--- |
| **Summon Pluma Overlay** | `Cmd + Shift + Space` | `Ctrl + Shift + Space` |
| **Refocus Input Box** | `Cmd + Shift + I` | `Ctrl + Shift + I` |
| **Toggle Listen Mode** | `Cmd + Shift + L` | `Ctrl + Shift + L` |
| **Capture Screen Region** | `Cmd + Shift + C` | `Ctrl + Shift + C` |

---

## 📄 License & Attribution

Pluma is maintained by **Hudson Argollo / ClubeMkt** under the **GPL-3.0 License**, building on the foundational open-source architecture originally created by Srikanth Nani.

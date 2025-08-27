# 📱 WhatsApp AI Support Agent

An AI-powered WhatsApp chatbot built using **Flask**, **LangChain**, and **Twilio WhatsApp API**.  
This bot can answer FAQs, capture leads (name, number, enquiry summary), and integrate with external tools like Google Calendar for appointment booking.

---

## 🚀 Features
- 🤖 AI-powered responses (via LangChain + OpenAI/HuggingFace/Perplexity LLMs)
- 📂 FAQ retrieval with vector search (FAISS embeddings)
- 📊 Lead capture (Name, Number, Enquiry Summary)
- 🌐 Multi-language support (English, Hindi, Hinglish)
- 📅 Extendable to Google Calendar integration
- 🛡️ Secure (environment variables for API keys)

---

## 🛠️ Tech Stack
- **Python 3.11**
- **Flask** (for webhook & REST endpoints)
- **LangChain** (for orchestration & retrieval)
- **FAISS** (for embeddings & search)
- **Twilio WhatsApp API** (for messaging integration)
- **Docker** (for containerized deployment)

---

## ⚙️ Setup

1. Clone the repo:
   ```bash
   git clone https://github.com/<your-username>/whatsapp-ai-bot.git
   cd whatsapp-ai-bot

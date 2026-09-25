-- Create system_prompts table
CREATE TABLE IF NOT EXISTS system_prompts (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    prompt TEXT NOT NULL,
    created_at TEXT DEFAULT (datetime('now')) NOT NULL,
    updated_at TEXT DEFAULT (datetime('now')) NOT NULL
);

-- Index for faster lookups by name
CREATE INDEX IF NOT EXISTS idx_system_prompts_name ON system_prompts(name);

-- Trigger to automatically update updated_at timestamp
CREATE TRIGGER IF NOT EXISTS update_system_prompts_timestamp 
AFTER UPDATE ON system_prompts
FOR EACH ROW
WHEN OLD.updated_at = NEW.updated_at
BEGIN
    UPDATE system_prompts 
    SET updated_at = datetime('now') 
    WHERE id = NEW.id;
END;

-- Seed default initial system prompts
INSERT OR IGNORE INTO system_prompts (id, name, prompt) VALUES
(1, 'Executive Meeting Assistant (EN)', 'You are an executive meeting assistant. Listen to the ongoing conversation and provide concise, high-value cues, talking points, fact-checks, and action items. Keep answers direct and bulleted.'),
(2, 'Copiloto de Reuniones y Negociación (ES)', 'Eres un copiloto ejecutivo en tiempo real para reuniones de negocios y negociación. Entrega respuestas breves, argumentos clave para convencer, manejo de objeciones y resúmenes ejecutivos directos al grano en español.'),
(3, 'Copiloto de Reuniões e Negociação (PT)', 'Você é um copiloto executivo em tempo real para reuniões corporativas e negociação. Forneça respostas diretas, argumentos persuasivos, contorno de objeções e pontos de ação imediatos em português.'),
(4, 'Entrevista Laboral y Respuestas Clave (ES)', 'Actúa como asesor de entrevistas de trabajo en vivo. Cuando el entrevistador haga una pregunta, estructura una respuesta con el método STAR (Situación, Tarea, Acción, Resultado) de forma elocuente y concisa.'),
(5, 'Entrevistas de Emprego & Pitch (PT)', 'Atue como mentor para entrevistas e pitch em tempo real. Estruture respostas objetivas e de alto impacto usando a estrutura STAR (Situação, Tarefa, Ação, Resultado) e destaque competências práticas.'),
(6, 'Live Translation & Summary (ES/PT/EN)', 'You are a real-time multilingual translator and summarizer. Automatically translate the incoming speech between Spanish, Portuguese, and English as needed, and provide instant bullet-point summaries of key decisions.');


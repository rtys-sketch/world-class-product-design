# World-Class Product Design Intelligence Skill 🚀
### Універсальний скіл дизайну цифрових продуктів найвищого світового рівня

> **Повна підтримка:** Antigravity, OpenAI Codex, Claude Code, Agent Standard, Cursor, GitHub Codespaces, хмарні сервери, веб/мобільний ChatGPT, Claude.ai, Gemini Advanced на будь-якому пристрої.

---

## 🌟 Про скіл (Overview)

Цей скіл перетворює будь-якого AI-асистента на провідного продуктового дизайнера та дизайн-архітектора світового рівня. Він охоплює:
- **Повний життєвий цикл дизайну:** від дизайн-геному продукту до імплементації в коді (Web Apps, PWAs, Dashboards, Mobile).
- **Дизайн-системи та візуальна досконалість:** типографіка, сітки, матеріали, OKLCH-палітри, темні теми, мікроанімації.
- **8-перспективний аудит (Critique Engine):** оцінка через очі Creative Director, Principal Designer, UX Specialist, Typographer, Motion Designer, Accessibility Auditor, Frontend Engineer та End User.
- **19 детальних довідників (Reference Guides)** з практичними прикладами та чеклістами.

---

## 🛠️ Як застосовувати на будь-якому пристрої та платформі

### 1. В Codex (OpenAI Codex / Codex CLI)
Скіл уже автоматично встановлено у глобальну директорію на вашому комп'ютері:
`~/.codex/skills/world-class-product-design/`

**Як викликати:**
У діалозі з Codex просто напишіть, наприклад:
> *"Застосуй скіл world-class-product-design щоб провести дизайн-рев'ю інтерфейсу"*
або
> *"Use world-class-product-design skill to architect a dashboard"*

Codex автоматично знайде `SKILL.md` та потрібні довідники з `references/`.

---

### 2. В Antigravity (Google Antigravity IDE / CLI)
Скіл встановлено як глобальний плагін Antigravity:
`~/.gemini/config/plugins/world-class-product-design/`
Та зареєстровано в `~/.gemini/config/config.json`.

**Як викликати:**
Antigravity автоматично підключає скіл на запити, пов'язані з UI/UX, редизайном, аудитом інтерфейсів, дизайном мобільних застосунків, PWA чи дашбордів. Ви також можете вказати явно:
> *"Використай world-class-product-design для створення преміального UI"*

---

### 3. В Claude Code та інших локальних агентах
Скіл встановлено в:
- `~/.claude/skills/world-class-product-design/`
- `~/.agents/skills/world-class-product-design/`

Для будь-якого проєкту достатньо додати папку у ваш репозиторій:
```bash
./install.sh --project /шлях/до/проекту
```
і скіл буде зафіксовано в коді проєкту для всієї команди!

---

### 4. В Хмарі (GitHub Codespaces, Gitpod, Linux/Mac сервери)
Коли ви відкриваєте хмарне середовище (Codespaces або Docker-контейнер):
1. **Варіант А (для всього проєкту):**
   Скопіюйте папку скіла в корінь репозиторію в `.agents/skills/world-class-product-design` або `.codex/skills/world-class-product-design` і зробіть `git commit`. Кожен хмарний агент у Codespaces одразу бачитиме його!
2. **Варіант Б (інсталяція однією командою):**
   Запустіть у терміналі хмари:
   ```bash
   chmod +x install.sh && ./install.sh
   ```
   Скіл миттєво встановиться у всі глобальні каталоги середовища (`~/.codex/skills`, `~/.claude/skills`, `~/.gemini/config/plugins`).

---

### 5. У вебі та на смартфонах/планшетах (ChatGPT Web/App, Claude.ai, Gemini Advanced)
На смартфонах (iOS/Android) чи у звичайному браузері немає доступу до локальних файлів. Для цього створено файл:
📄 **`WORLD_CLASS_DESIGN_SYSTEM_PROMPT.md`**

**Як використовувати:**
- **ChatGPT:**
  1. Відкрийте *Settings* -> *Custom Instructions* (або створіть свій *Custom GPT* "World-Class Product Designer").
  2. Скопіюйте та вставте вміст файлу `WORLD_CLASS_DESIGN_SYSTEM_PROMPT.md`.
  3. *(Опціонально для Custom GPT)*: Завантажте файл `world-class-product-design-universal.zip` у вкладку **Knowledge**!
- **Claude.ai:**
  1. Створіть новий **Project** у Claude.
  2. У поле **Project Instructions** вставте текст із `WORLD_CLASS_DESIGN_SYSTEM_PROMPT.md`.
  3. У **Project Knowledge** завантажте markdown-файли з папки `references/`.
- **Gemini Advanced:**
  1. Створіть свій **Gem** (наприклад, "Design Architect").
  2. Вставте інструкції з `WORLD_CLASS_DESIGN_SYSTEM_PROMPT.md`.
- **Cursor / Windsurf / Copilot:**
  - Скопіюйте `WORLD_CLASS_DESIGN_SYSTEM_PROMPT.md` у файл `.cursorrules` або `.cursor/rules/design.mdc`.

---

## 📦 Вміст пакету

```text
world-class-product-design/
├── SKILL.md                              # Головний маніфест скіла з YAML-фронтматером
├── WORLD_CLASS_DESIGN_SYSTEM_PROMPT.md   # Автономний мастер-промпт для вебу, хмари та мобільних AI
├── plugin.json                           # Маніфест плагіна для Antigravity
├── install.ps1                           # 1-клік інсталятор для Windows
├── install.sh                            # 1-клік інсталятор для Linux / macOS / Codespaces
├── assets/
│   └── design-review-workbook.json       # Шаблон робочого журналу дизайн-рішень
└── references/                           # 19 спеціалізованих поглиблених довідників:
    ├── color-and-materials.md            # Палітри OKLCH, темні теми, поверхні, тіні
    ├── creative-exploration.md           # Пошук оригінальних дизайн-концептів
    ├── dashboards-and-data.md            # Дашборди, щільні таблиці, візуалізація даних
    ├── design-critique.md                # 8-перспективний двигун критики та 100-бальний рубик
    ├── design-philosophy.md              # Геном продукту, 3 рівні досконалості
    ├── implementation.md                 # Перетворення дизайну на production-ready код
    ├── information-architecture.md       # Ментальні моделі, навігація, інформаційна архітектура
    ├── mobile-design.md                  # Нативний та адаптивний мобільний дизайн
    ├── motion-design.md                  # Фізика спрінгів, мікроанімації, доступність
    ├── premium-visual-excellence.md      # Преміальна візуальна мова
    ├── pwa-design.md                     # Progressive Web Apps, офлайн, safe-area, жест
    ├── redesign-intelligence.md          # Аудит та редизайн існуючих продуктів
    ├── tools-and-mcp.md                  # Інструменти MCP, скріншоти, дизайн-тули
    ├── typography.md                     # Типографічні шкали, вирівнювання, шрифти
    ├── ux-psychology.md                  # Закони UX (Fitts, Hick, Miller тощо), психологія
    ├── visual-composition.md             # Сітки, ритм, фокальні точки, щільність
    ├── visual-validation.md              # Протокол візуального тестування та валідації
    ├── web-app-design.md                 # Складні веб-інтерфейси, форми, шорткати
    └── world-class-research.md           # Бенчмаркінг світових продуктів без сліпого копіювання
```

---

## ⚡ Швидке перенесення на новий комп'ютер

Архів `world-class-product-design-universal.zip` знаходиться у вашій папці **Downloads**:
- На новому комп'ютері з **Windows**: розпакуйте і запустіть `install.ps1`.
- На **Mac / Linux / Codespaces**: розпакуйте і запустіть `bash install.sh`.
- Всі налаштування виконаються повністю автоматично!

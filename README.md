# My Automated Documentation System

![GitHub](https://img.shields.io/github/license/yana-petrova/documentation-project)
![GitHub last commit](https://img.shields.io/github/last-commit/yana-petrova/documentation-project)
![GitHub repo size](https://img.shields.io/github/repo-size/yana-petrova/documentation-project)
![GitHub issues](https://img.shields.io/github/issues/yana-petrova/documentation-project)

**Автоматизированная система документации** с поддержкой нескольких форматов, оформлением, формулами LaTeX и автособираемым оглавлением.

| Формат | Особенности |
|--------|----------|
| 📝 **DOCX** | Совместимость с Microsoft Word |
| 🌐 **HTML** | Адаптивный дизайн, интерактивность|
| 📚 **Оглавление** | Автоматическое создание |
| 🧮 **Математика** | Уравнения и формулы LaTeX |
| 📊 **Таблицы** | Поддержка markdown-таблиц |
| 🖼️ **Изображения** | Вставка рисунков и диаграмм |


### Требования
- [Pandoc](https://pandoc.org/installing.html) ≥ 2.11


### Структура проекта

```
documentation-project/
├── 🔧 Makefile             # Система автоматической сборки
├── 📝 intro.md             # Введение (пример статьи)
├── 📄 methods.md           # Описание методов исследования (пример статьи)
├── 📊 results.md           # Результаты и анализ (пример статьи)
├── 🧮 math.md              # Математическое объяснение (пример статьи)
├── 📚 references.md        # Обзор литературы (пример статьи)
├── 📋 references.bib       # База данных литературы
├── 🎨 style.html           # Стили для HTML
├── 📑 gost-custom.csl      # Стиль списка литературы
└── 📁 images/              # Изображения и диаграммы (пример статьи)
```

### Инструкция по использованию

```make all```    # Сборка всех файлов (DOCX и HTML)

```make docx```    # Только DOCX

```make html ```   # Только HTML

```make clean```   # Удаление собранных документов

<img width="832" height="1192" alt="image" src="https://github.com/user-attachments/assets/fae800e0-b93b-4347-957d-4beda78a4afb" />


<img width="849" height="1202" alt="image" src="https://github.com/user-attachments/assets/19ba3ad4-d617-4352-b3ce-b1b7664335b1" />





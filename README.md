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
# Сборка всех форматов
make all

# Или отдельные форматы
```make docx```    # Только DOCX

```make html ```   # Только HTML

```make clean```   # Удаление собранных документов



@echo off
chcp 65001 >nul
setlocal EnableDelayedExpansion

set "SOURCES=intro.md methods.md results.md math.md references.md"

if "%1"=="" (
    echo Сборка всех документов...
    pandoc %SOURCES% --include-in-header=style.html --standalone --toc --css=style.css -o "documentation.html" && echo ✓ documentation.html создан
    pandoc %SOURCES% --standalone --toc -o "documentation.docx" && echo ✓ documentation.docx создан
    echo Все документы собраны!
) else if "%1"=="html" (
    echo Сборка HTML...
    pandoc %SOURCES% --include-in-header=style.html --standalone --toc --css=style.css -o "documentation.html" && echo ✓ documentation.html создан
) else if "%1"=="docx" (
    echo Сборка DOCX...
    pandoc %SOURCES% --standalone --toc -o "documentation.docx" && echo ✓ documentation.docx создан
) else if "%1"=="clean" (
    echo Очистка...
    if exist "documentation.html" (
        del "documentation.html" && echo ✓ documentation.html удален
    ) else (
        echo documentation.html не существует
    )
    if exist "documentation.docx" (
        del "documentation.docx" && echo ✓ documentation.docx удален
    ) else (
        echo documentation.docx не существует
    )
) else if "%1"=="help" (
    echo Доступные команды:
    echo   make        - собрать все документы
    echo   make html   - собрать только HTML
    echo   make docx   - собрать только DOCX  
    echo   make clean  - удалить сгенерированные файлы
    echo   make help   - показать эту справку
) else (
    echo Неизвестная команда: %1
    echo Используйте "make help" для справки
)
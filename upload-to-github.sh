#!/bin/bash

# AutoClicker Windows - GitHub Upload Script
# Автоматическая загрузка SEO-оптимизированного репозитория

set -e

# Цвета для вывода
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}🚀 AutoClicker Windows - GitHub Upload Script${NC}"
echo -e "${BLUE}================================================${NC}"

# Загрузка креденшелов
if [ ! -f ".internal/GITHUB_CREDENTIALS.md" ]; then
    echo -e "${RED}❌ Файл .internal/GITHUB_CREDENTIALS.md не найден!${NC}"
    exit 1
fi

# Извлечение данных из файла креденшелов
GITHUB_USERNAME=$(grep "GITHUB_USERNAME=" .internal/GITHUB_CREDENTIALS.md | cut -d'=' -f2)
GITHUB_TOKEN=$(grep "GITHUB_TOKEN=" .internal/GITHUB_CREDENTIALS.md | cut -d'=' -f2)
GITHUB_EMAIL=$(grep "GITHUB_EMAIL=" .internal/GITHUB_CREDENTIALS.md | cut -d'=' -f2)

# Информация о проекте
PROJECT_NAME="autoclicker-windows-offline-setup-guide"
REPO_DESCRIPTION="Free AutoClicker for Windows - Offline mouse automation tool with no login required. Perfect for gaming, work, and repetitive clicking tasks."

echo -e "${GREEN}✅ Креденшелы загружены${NC}"
echo -e "${YELLOW}📦 Проект: ${PROJECT_NAME}${NC}"

# Проверка Git
if ! command -v git &> /dev/null; then
    echo -e "${RED}❌ Git не установлен!${NC}"
    exit 1
fi

# Инициализация Git репозитория
echo -e "${BLUE}🔧 Инициализация Git репозитория...${NC}"
git init

# Настройка Git
git config user.name "${GITHUB_USERNAME}"
git config user.email "${GITHUB_EMAIL}"

# Создание .gitignore если его нет
if [ ! -f ".gitignore" ]; then
    echo -e "${YELLOW}⚠️  Создаю .gitignore...${NC}"
    echo ".internal/GITHUB_CREDENTIALS.md" > .gitignore
fi

# Первый коммит
echo -e "${BLUE}📝 Создание первого коммита...${NC}"
git add .
git commit -m "feat: initial commit with SEO optimization

🚀 Complete AutoClicker Windows setup with:
- SEO-optimized README and documentation
- GitHub Pages configuration
- Community guidelines and templates
- Comprehensive keyword optimization
- User-friendly installation guide

Keywords: autoclicker for windows, mouse automation tool, free clicker download, autoclicker offline version, no login clicker"

# Создание репозитория на GitHub через API
echo -e "${BLUE}🌐 Создание репозитория на GitHub...${NC}"
curl -X POST \
  -H "Authorization: token ${GITHUB_TOKEN}" \
  -H "Accept: application/vnd.github.v3+json" \
  -H "Content-Type: application/json" \
  https://api.github.com/user/repos \
  -d "{
    \"name\": \"${PROJECT_NAME}\",
    \"description\": \"${REPO_DESCRIPTION}\",
    \"private\": false,
    \"has_issues\": true,
    \"has_projects\": true,
    \"has_wiki\": false,
    \"has_discussions\": true,
    \"auto_init\": false,
    \"allow_squash_merge\": true,
    \"allow_merge_commit\": true,
    \"allow_rebase_merge\": true
  }"

echo -e "${GREEN}✅ Репозиторий создан${NC}"

# Добавление remote и push
echo -e "${BLUE}📤 Загрузка кода на GitHub...${NC}"
git remote add origin "https://${GITHUB_USERNAME}:${GITHUB_TOKEN}@github.com/${GITHUB_USERNAME}/${PROJECT_NAME}.git"
git branch -M main
git push -u origin main

echo -e "${GREEN}✅ Код загружен${NC}"

# Добавление topics для SEO
echo -e "${BLUE}🏷️  Добавление SEO topics...${NC}"
curl -X PUT \
  -H "Authorization: token ${GITHUB_TOKEN}" \
  -H "Accept: application/vnd.github.v3+json" \
  -H "Content-Type: application/json" \
  "https://api.github.com/repos/${GITHUB_USERNAME}/${PROJECT_NAME}/topics" \
  -d '{
    "names": [
      "autoclicker",
      "windows",
      "mouse-automation",
      "click-automation",
      "gaming-tools",
      "productivity",
      "free-software",
      "portable",
      "offline-tool",
      "no-login",
      "hotkeys",
      "automation-tool",
      "windows-utility",
      "clicker-bot",
      "mouse-clicker",
      "auto-clicker",
      "click-helper",
      "gaming-automation",
      "task-automation",
      "windows-gaming"
    ]
  }'

echo -e "${GREEN}✅ Topics добавлены${NC}"

# Включение GitHub Pages
echo -e "${BLUE}📄 Настройка GitHub Pages...${NC}"
curl -X POST \
  -H "Authorization: token ${GITHUB_TOKEN}" \
  -H "Accept: application/vnd.github.v3+json" \
  -H "Content-Type: application/json" \
  "https://api.github.com/repos/${GITHUB_USERNAME}/${PROJECT_NAME}/pages" \
  -d '{
    "source": {
      "branch": "main",
      "path": "/docs"
    }
  }'

echo -e "${GREEN}✅ GitHub Pages настроен${NC}"

# Создание первого релиза
echo -e "${BLUE}🎉 Создание первого релиза...${NC}"
curl -X POST \
  -H "Authorization: token ${GITHUB_TOKEN}" \
  -H "Accept: application/vnd.github.v3+json" \
  -H "Content-Type: application/json" \
  "https://api.github.com/repos/${GITHUB_USERNAME}/${PROJECT_NAME}/releases" \
  -d "{
    \"tag_name\": \"v1.0.0\",
    \"name\": \"AutoClicker Windows v1.0.0 - Initial Release\",
    \"body\": \"# 🖱️ AutoClicker for Windows v1.0.0 - Initial Release\n\n## 🚀 Features\n\n- ✅ **Complete offline functionality** - no internet required\n- ✅ **Zero registration** - start using immediately\n- ✅ **Gaming optimized** - works with most Windows games\n- ✅ **Customizable hotkeys** - F6/F7/F8 default bindings\n- ✅ **Precise timing** - millisecond accuracy\n- ✅ **Multiple click modes** - single, double, hold, burst\n- ✅ **Portable design** - no installation needed\n- ✅ **Windows 7-11 support** - full compatibility\n\n## 📥 Download\n\nDownload the complete package and extract to any folder. No installation required!\n\n## 🎯 Perfect For\n\n- 🎮 Gaming automation (idle games, farming)\n- 💼 Productivity tasks (form filling, testing)\n- 🔬 Software testing and QA\n- 📊 Performance testing\n\n## 🔑 Keywords\n\nautoclicker for windows, mouse automation tool, free clicker download, autoclicker offline version, no login clicker, gaming automation\n\n---\n\n**Full compatibility with Windows 7, 8, 10, and 11**\",
    \"draft\": false,
    \"prerelease\": false
  }"

echo -e "${GREEN}✅ Релиз создан${NC}"

# Финальные инструкции
echo -e "${GREEN}🎉 УСПЕШНО ЗАВЕРШЕНО!${NC}"
echo -e "${BLUE}================================================${NC}"
echo -e "${YELLOW}📋 Следующие шаги (выполни вручную):${NC}"
echo ""
echo -e "${BLUE}1. 📸 Загрузи social preview image (1280x640px):${NC}"
echo -e "   https://github.com/${GITHUB_USERNAME}/${PROJECT_NAME}/settings"
echo ""
echo -e "${BLUE}2. 🌐 Проверь GitHub Pages:${NC}"
echo -e "   https://${GITHUB_USERNAME}.github.io/${PROJECT_NAME}"
echo ""
echo -e "${BLUE}3. 🔗 Ссылки на репозиторий:${NC}"
echo -e "   Repo: https://github.com/${GITHUB_USERNAME}/${PROJECT_NAME}"
echo -e "   Pages: https://${GITHUB_USERNAME}.github.io/${PROJECT_NAME}"
echo -e "   Issues: https://github.com/${GITHUB_USERNAME}/${PROJECT_NAME}/issues"
echo ""
echo -e "${BLUE}4. 📈 Начни SEO продвижение:${NC}"
echo -e "   - Поделись в социальных сетях"
echo -e "   - Отправь на Reddit (r/software, r/gaming)"
echo -e "   - Добавь в каталоги софта"
echo ""
echo -e "${GREEN}🎯 Ожидаемые результаты:${NC}"
echo -e "   - Неделя 1: 50-100 stars"
echo -e "   - Месяц 1: 500+ посетителей"
echo -e "   - Месяц 3: Топ-10 в поиске" 
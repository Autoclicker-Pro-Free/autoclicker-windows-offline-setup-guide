# GitHub Archive Distribution Setup

## 📦 Настройка раздачи архивов через GitHub Pages

### Концепция
Используем GitHub Pages для хостинга архивов с программой по адресу:
```
https://[REPO-NAME]/.github.io/.github/
```

### 🔧 Настройка структуры

1. **Создайте папку для архивов**:
```bash
mkdir -p .github/archives
```

2. **Структура папки**:
```
.github/
├── archives/
│   ├── index.html              # Страница со списком загрузок
│   ├── [PROJECT]-win.zip       # Windows версия
│   ├── [PROJECT]-mac.zip       # macOS версия
│   ├── [PROJECT]-linux.tar.gz  # Linux версия
│   ├── [PROJECT]-source.zip    # Исходный код
│   └── latest.json             # Информация о последней версии
├── ISSUE_TEMPLATE/
└── workflows/
```

3. **Создайте index.html для красивой страницы загрузки**:
```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>[PROJECT NAME] - Downloads</title>
    <style>
        body {
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif;
            max-width: 800px;
            margin: 0 auto;
            padding: 2rem;
            background: #0d1117;
            color: #c9d1d9;
        }
        .header {
            text-align: center;
            margin-bottom: 3rem;
        }
        h1 {
            color: #58a6ff;
            margin-bottom: 0.5rem;
        }
        .downloads {
            display: grid;
            gap: 1rem;
            margin-top: 2rem;
        }
        .download-card {
            background: #161b22;
            border: 1px solid #30363d;
            border-radius: 6px;
            padding: 1.5rem;
            transition: border-color 0.2s;
        }
        .download-card:hover {
            border-color: #58a6ff;
        }
        .platform {
            display: flex;
            align-items: center;
            justify-content: space-between;
        }
        .platform-info h3 {
            margin: 0;
            color: #f0f6fc;
        }
        .platform-info p {
            margin: 0.5rem 0 0 0;
            color: #8b949e;
            font-size: 0.875rem;
        }
        .download-btn {
            background: #238636;
            color: white;
            border: none;
            padding: 0.5rem 1rem;
            border-radius: 6px;
            font-size: 14px;
            font-weight: 500;
            cursor: pointer;
            text-decoration: none;
            display: inline-block;
        }
        .download-btn:hover {
            background: #2ea043;
        }
        .version-info {
            text-align: center;
            margin-top: 2rem;
            color: #8b949e;
            font-size: 0.875rem;
        }
    </style>
</head>
<body>
    <div class="header">
        <h1>[PROJECT NAME]</h1>
        <p>Choose your platform to download</p>
    </div>

    <div class="downloads">
        <div class="download-card">
            <div class="platform">
                <div class="platform-info">
                    <h3>🪟 Windows</h3>
                    <p>Windows 10 or later (64-bit)</p>
                </div>
                <a href="[PROJECT]-win.zip" class="download-btn">Download</a>
            </div>
        </div>

        <div class="download-card">
            <div class="platform">
                <div class="platform-info">
                    <h3>🍎 macOS</h3>
                    <p>macOS 10.14 or later</p>
                </div>
                <a href="[PROJECT]-mac.zip" class="download-btn">Download</a>
            </div>
        </div>

        <div class="download-card">
            <div class="platform">
                <div class="platform-info">
                    <h3>🐧 Linux</h3>
                    <p>Ubuntu 20.04+ or compatible</p>
                </div>
                <a href="[PROJECT]-linux.tar.gz" class="download-btn">Download</a>
            </div>
        </div>

        <div class="download-card">
            <div class="platform">
                <div class="platform-info">
                    <h3>📦 Source Code</h3>
                    <p>Build from source</p>
                </div>
                <a href="[PROJECT]-source.zip" class="download-btn">Download</a>
            </div>
        </div>
    </div>

    <div class="version-info">
        <p>Version: <span id="version">1.0.0</span> | Released: <span id="release-date">[DATE]</span></p>
        <p><a href="https://github.com/[USERNAME]/[REPO-NAME]" style="color: #58a6ff;">← Back to GitHub</a></p>
    </div>

    <script>
        // Автоматическое определение платформы
        const platform = navigator.platform.toLowerCase();
        if (platform.includes('win')) {
            document.querySelector('[href*="win"]').parentElement.parentElement.style.border = '2px solid #58a6ff';
        } else if (platform.includes('mac')) {
            document.querySelector('[href*="mac"]').parentElement.parentElement.style.border = '2px solid #58a6ff';
        } else if (platform.includes('linux')) {
            document.querySelector('[href*="linux"]').parentElement.parentElement.style.border = '2px solid #58a6ff';
        }
    </script>
</body>
</html>
```

4. **Создайте latest.json для автоматических обновлений**:
```json
{
  "version": "1.0.0",
  "releaseDate": "2024-01-01",
  "downloads": {
    "windows": {
      "url": "https://[REPO-NAME]/.github.io/.github/",
      "size": "50MB",
      "sha256": "..."
    },
    "mac": {
      "url": "https://[REPO-NAME]/.github.io/.github/",
      "size": "48MB",
      "sha256": "..."
    },
    "linux": {
      "url": "https://[REPO-NAME]/.github.io/.github/",
      "size": "45MB",
      "sha256": "..."
    }
  }
}
```

### 🚀 GitHub Actions для автоматизации

Создайте `.github/workflows/build-and-deploy.yml`:
```yaml
name: Build and Deploy Archives

on:
  release:
    types: [created]
  workflow_dispatch:

jobs:
  build:
    strategy:
      matrix:
        os: [windows-latest, macos-latest, ubuntu-latest]
    
    runs-on: ${{ matrix.os }}
    
    steps:
    - uses: actions/checkout@v3
    
    - name: Build Application
      run: |
        # Ваши команды сборки
        
    - name: Package Application
      run: |
        # Команды упаковки в архив
        
    - name: Upload Artifact
      uses: actions/upload-artifact@v3
      with:
        name: ${{ matrix.os }}-build
        path: dist/*

  deploy:
    needs: build
    runs-on: ubuntu-latest
    
    steps:
    - uses: actions/checkout@v3
      with:
        ref: gh-pages
    
    - name: Download all artifacts
      uses: actions/download-artifact@v3
    
    - name: Organize archives
      run: |
        mkdir -p .github/archives
        mv windows-latest-build/* .github/archives/
        mv macos-latest-build/* .github/archives/
        mv ubuntu-latest-build/* .github/archives/
    
    - name: Update latest.json
      run: |
        # Скрипт обновления latest.json
    
    - name: Commit and push
      run: |
        git config user.name github-actions
        git config user.email github-actions@github.com
        git add .
        git commit -m "Update archives for version ${{ github.event.release.tag_name }}"
        git push
```

### 📝 Настройка в промптах

В README.md используйте:
```markdown
## 📥 Download

<div align="center">

[![Download Latest](https://img.shields.io/github/v/release/[USERNAME]/[REPO-NAME]?label=Download&style=for-the-badge)](https://[REPO-NAME]/.github.io/)

</div>

### Direct Downloads
- 🪟 [Windows](https://[REPO-NAME]/.github.io/.github/)
- 🍎 [macOS](https://[REPO-NAME]/.github.io/.github/)  
- 🐧 [Linux](https://[REPO-NAME]/.github.io/.github/)
```

### ⚠️ Важные моменты

1. **Размер файлов**: GitHub Pages имеет ограничение в 100MB на файл
2. **Bandwidth**: Есть soft limit в 100GB/месяц
3. **Альтернативы для больших файлов**:
   - GitHub Releases (до 2GB на файл)
   - Git LFS
   - Внешние CDN

### 🔒 Безопасность

1. Добавьте проверку целостности:
```markdown
### Verify Downloads
Windows: `sha256sum [PROJECT]-win.zip`
```

2. Подписывайте релизы GPG ключом

3. Используйте HTTPS везде

---

**Результат**: Пользователи смогут скачивать вашу программу по простой и запоминающейся ссылке! 
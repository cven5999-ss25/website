# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Quarto-based course website for CVEN 5999: Special Topics - Data Analytics for Development, a summer course at CU Boulder. The site includes course materials, lecture slides, weekly content, and project information.

## Architecture

### Content Structure
- **Main pages**: Course overview (`index.qmd`), project details (`project/index.qmd`), schedule (`schedule.qmd`)
- **Weekly content**: Located in `weeks/` directory (wk-01.qmd through wk-08.qmd)
- **Lecture slides**: Located in `slides/` directory with RevealJS format (.qmd files)
- **Data**: Course data and R scripts in `data/` directory
- **Images**: Organized by lecture in `slides/img/` with subdirectories

### Configuration
- **Main config**: `_quarto.yml` - Controls website structure, theme, sidebar navigation
- **Variables**: `_variables.yml` - Course-specific variables (dates, titles, GitHub org)
- **Theme**: `theme.scss` and `slides.scss` for styling
- **Output**: Builds to `docs/` directory for GitHub Pages deployment

### Key Technologies
- **Quarto**: Static site generator with R integration
- **RevealJS**: For presentation slides
- **R/tidyverse**: Data analysis and visualization in course content
- **GitHub Pages**: Hosting platform (output to `docs/`)

## Development Commands

### Building the Site
```bash
# Render the entire website
quarto render

# Render specific content
quarto render index.qmd
quarto render slides/lec-01-welcome.qmd
quarto render weeks/wk-01.qmd
```

### Preview During Development
```bash
# Start preview server (watches for changes)
quarto preview

# Preview specific slide deck
quarto preview slides/lec-01-welcome.qmd
```

### Publishing
```bash
# Publish to GitHub Pages (builds to docs/ directory)
quarto publish gh-pages
```

## Content Guidelines

### File Organization
- Weekly content follows naming convention: `wk-XX.qmd` where XX is week number
- Lecture slides follow: `lec-XX-topic.qmd` pattern
- Images organized in `slides/img/lec-XX/` subdirectories
- Data files in `data/` with R scripts for processing

### YAML Frontmatter Patterns
- Course pages use standard Quarto frontmatter with `title`, `editor: source`
- Slides use RevealJS format with custom theme, transitions, and branding
- Execution settings typically include `echo: false`, `warning: false` for clean output

### Content Integration
- Course data pulled from CSV files in `data/` directory using R code chunks
- Variables from `_variables.yml` referenced throughout content using Quarto syntax
- Cross-references between weeks, slides, and project materials via relative paths

## R Environment
- Uses tidyverse packages for data manipulation and visualization
- Additional packages: countdown, gt, here, knitr for enhanced functionality
- Code execution with Quarto's freeze feature for reproducible builds


## Project Management with GitHub CLI

- List issues: `gh issue list`
- View issue details: `gh issue view 80` (e.g., for issue #80 "Rename geographies parameter")
- Create branch for issue: `gh issue develop 80`
- Checkout branch: `git checkout 80-rename-geographies-parameter-to-entities`
- Create pull request: `gh pr create --title "Rename geographies parameter to entities" --body "Implements #80"`
- List pull requests: `gh pr list`
- View pull request: `gh pr view PR_NUMBER`

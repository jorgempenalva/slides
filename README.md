# slides

Claude Code skill for generating branded presentations as PDF using [Slidev](https://sli.dev).

## Install

```bash
npx skills add https://github.com/jorgempenalva/slides
```

## Usage

Ask Claude to create a presentation:

```
Create a presentation about our Q4 results
Make slides for the board meeting covering revenue, roadmap, and hiring
Generate a deck on microservices migration — 8 slides
```

The skill auto-detects brand colors from your repo's Tailwind config, CSS variables, or design tokens, and exports to PDF.

## Credits

Built on [Slidev](https://sli.dev) (MIT) and uses [Playwright](https://playwright.dev) (Apache 2.0) for PDF export.

## License

Apache 2.0 — see [LICENSE](LICENSE).

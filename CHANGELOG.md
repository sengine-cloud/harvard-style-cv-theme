# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [1.1.1] - 2026-06-10

### Fixed
- Print/PDF layout wasted a lot of horizontal and vertical space. Scoped the
  responsive breakpoints to `screen` so print keeps the two-column header (dates
  right-aligned beside titles) instead of inheriting the mobile stacked layout;
  let large multi-role employer entries flow across page breaks instead of being
  pushed wholesale to the next page (which left big gaps at the bottom of a
  page); and set the printable margin once via `@page` so it no longer stacks
  with the browser's default margin. Individual roles and simple entries still
  avoid mid-entry page breaks (via `:has()`).

## [1.1.0] - 2026-06-10

Forked/vendored under the `sengine-cloud` organization and packaged as a gem so
it can be consumed as a versioned dependency — including from a **private**
repository, which `jekyll-remote-theme` cannot authenticate against.

### Added
- **Nested `roles`** in `cv.html`: an entry can group several positions held at
  one employer, each rendered as a nested entry (`title`, `sub`, `location`,
  `dates`, `bullets`). Styles (`.cv-entry-roles`, `.cv-entry-role`) folded into
  `main.scss`, including a `page-break-inside: avoid` print rule.
- **GoatCounter** analytics support in `default.html` (enabled via the
  `goatcounter` config key), with per-pageview version tagging through
  `site.commit_short`, alongside the existing Google Analytics and
  Yandex.Metrika options. Contact and social links now also carry
  `data-goatcounter-click` attributes next to the existing `data-ym-goal` ones.
- **Gem packaging**: `harvard-style-cv-theme.gemspec`, so the theme can be used
  via a Bundler `git:` source (`gem "harvard-style-cv-theme", git: ..., tag: ...`)
  in addition to `remote_theme`.

### Changed
- Renamed the `.cv-entry-degree` class to the context-neutral **`.cv-entry-sub`**
  (it styles any entry's `sub` field, not only academic degrees). Both top-level
  entries and nested roles use it.
- `<title>` now uses `affiliation` (falling back to `title`) as its suffix.
- `Gemfile` now uses `gemspec`; build artifacts are gitignored.

## [1.0.0] - 2024-12-XX

### Added
- Initial release of Harvard-style CV Jekyll template
- Classic Harvard layout with centered header
- Responsive design for desktop, tablet, and mobile
- Print-optimized CSS with separate print stylesheets
- Social media integration (LinkedIn, GitHub, Twitter, Telegram, LeetCode)
- Modular YAML-based content management
- GitHub Pages compatibility with remote theme support
- SEO optimization with jekyll-seo-tag
- Comprehensive documentation and examples

### Features
- Bold centered name and contact information
- All-caps section headings with horizontal rules
- Left-aligned institution/title, right-aligned date/location
- Bullet-point lists for achievements and details
- Times New Roman typography for academic appearance
- 1-inch margins and 1.3 line height for print compatibility
- SVG-based social icons with print fallbacks
- Conditional rendering for optional fields
- HTML support in bullet points for formatting

[Unreleased]: https://github.com/sengine-cloud/harvard-style-cv-theme/compare/v1.1.1...HEAD
[1.1.1]: https://github.com/sengine-cloud/harvard-style-cv-theme/compare/v1.1.0...v1.1.1
[1.1.0]: https://github.com/sengine-cloud/harvard-style-cv-theme/compare/v1.0.0...v1.1.0
[1.0.0]: https://github.com/sengine-cloud/harvard-style-cv-theme/releases/tag/v1.0.0

# Generative Weather Data Assimilation — Project Page

Project page for *Benchmarking Generative Models for Weather Data Assimilation on Real Station Observations* (Huang, Yang, Giezendanner, Wang, 2025).

Live site: **https://earth-intelligence-lab.github.io/generative-weather-da/**

## Structure

```
generative-weather-da/
├── index.html          # project page
├── style.css
├── assets/             # figures + video poster
├── serve.command       # double-click on macOS to preview locally
├── .nojekyll           # disable Jekyll; serve files as-is
├── .gitignore          # excludes PDF + MP4 from the repo
└── README.md           # this file
```

Code (training, evaluation, etc.) will land in `code/` in the same repo. Update the **Code** button in `index.html` once that's in.

## Local preview

Double-click `serve.command`, or:
```
cd website
python3 -m http.server 8080
# open http://localhost:8080
```
Do **not** open `index.html` directly via `file://` — the YouTube embed fails outside HTTP origins (Error 153).

## Deploy (GitHub Pages)

One-time setup:

```bash
cd website
git init
git add .
git commit -m "Initial project page"
git branch -M main
git remote add origin https://github.com/earth-intelligence-lab/generative-weather-da.git
git push -u origin main
```

Then: **Repo → Settings → Pages → Source = `main` / `/ (root)` → Save**. Live in ~1 minute.

## External resources

- **Thesis PDF** — not in the repo. Will be hosted externally (arXiv / Zenodo / MIT DSpace). Update the `href="#"` on the Thesis button once a stable URL exists.
- **Teaser video** — YouTube, ID `jVlU9CnnOEU`. Must be Public or Unlisted, with embedding allowed.
- **Author pages** — Google Scholar, linked inline in the authors list.

## Updating

Edit `index.html` directly. No build step. Push to `main` and Pages redeploys in ~60s.

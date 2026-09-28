# CyberChef-faster

English | [中文](README.zh-CN.md)

**CyberChef, at full speed.** Instant UI, zero loading spinners, 4.7 MB core — all 500+ operations intact.

**Open it now: <https://dem0ns.github.io/CyberChef-faster/>**

## Why it's faster

- **UI-first paint** — the interface and core operations (Base64, Hex, URL, …) are interactive immediately; the baking workers stream in behind the scenes and pick up queued recipes automatically.
- **Split workers** — the monolithic 13.6 MB bundle is broken into a 4.7 MB `main.js` plus five on-demand worker chunks (`ChefWorker`, `DishWorker`, `InputWorker`, `ZipWorker`, `LoaderWorker`).
- **Lean package** — 12 MB, unzip and run; the 18 MB OCR engine and all promo chrome are stripped; copyright notices preserved.
- **Adaptive layout** — panes relax their pixel minimums on narrow windows (DevTools friendly) and restore when there is room.

## Use it

**Online:** <https://dem0ns.github.io/CyberChef-faster/>

**Local** (fastest, works offline):

```bash
unzip CyberChef-faster.zip && cd CyberChef-faster
python3 -m http.server 8787   # → http://localhost:8787
```

**Docker:**

```bash
docker compose up -d  # → http://localhost:8787
```

## Build your own

```bash
npm install
npm run build        # output in build/prod/
```

This repository is the complete, already-optimized CyberChef source tree — no patch step. `npm install` and `npm run build` produce the dist directory (Node 24). GitHub Actions rebuilds on every push and every Monday, publishing the release artifact and GitHub Pages.

## Copyright

CyberChef is Crown Copyright GCHQ, licensed under Apache-2.0. This project redistributes it with build-level optimizations and preserves all copyright and license notices.

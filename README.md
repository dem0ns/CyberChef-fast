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
unzip CyberChef-faster_v1.2.0.zip && cd CyberChef-faster_v1.2.0
python3 -m http.server 8787   # → http://localhost:8787
```

**Docker:**

```bash
docker compose up -d  # → http://localhost:8787
```

## Build your own

```bash
npm install
npm run build        # 产物在 build/prod/
```

Pins the upstream commit recorded in `UPSTREAM`, applies `patches/cyberchef-faster.patch`, installs dependencies and produces a dist directory (Node 24 and git required). GitHub Actions rebuilds every Monday and on demand, tracking the pinned upstream commit.

## Copyright

CyberChef is Crown Copyright GCHQ, licensed under Apache-2.0. This project redistributes it with build-level optimizations and preserves all copyright and license notices.

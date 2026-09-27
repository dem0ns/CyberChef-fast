# CyberChef-faster

[English](README.md) | 中文

**极速版 CyberChef。** 秒开界面，零加载圈，核心仅 4.7 MB，500+ 操作一个不少。

**在线使用：<https://dem0ns.github.io/CyberChef-faster/>**

## 为什么快

- **界面优先** —— 界面与基础操作（Base64、Hex、URL……）即刻可用；烘焙引擎后台静默加载，就绪后自动补跑排队的配方。
- **拆分 Worker** —— 单体 13.6 MB 大包拆成 4.7 MB 的 `main.js`，外加五个按需加载的 Worker（`ChefWorker`、`DishWorker`、`InputWorker`、`ZipWorker`、`LoaderWorker`）。
- **精简** —— 移除 18 MB OCR 引擎与全部推广元素；版权与许可信息保留。
- **自适应布局** —— 窗口变窄（比如打开 DevTools）时自动放宽面板最小宽度，窗口变宽自动恢复，任何尺寸都可用。

## 使用

**在线**：<https://dem0ns.github.io/CyberChef-faster/>

**本地**（最快，可离线）：

```bash
unzip CyberChef-faster_v1.2.0.zip && cd CyberChef-faster_v1.2.0
python3 -m http.server 8787   # → http://localhost:8787
```

**Docker：**

```bash
docker compose up -d  # → http://localhost:8787
```

## 自己构建

```bash
npm install
npm run build        # 产物在 build/prod/
```

脚本锁定 `UPSTREAM` 中记录的上游提交，套用 `patches/cyberchef-faster.patch`，安装依赖并产出 dist 目录（需要 Node 24 与 git）。GitHub Actions 每周一自动重建，也可手动触发。

## 版权

CyberChef 由 GCHQ 版权所有，Apache-2.0 许可证授权。本项目仅在构建层做优化，保留全部版权与许可声明。

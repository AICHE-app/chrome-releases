# Contributing to AICHE Chrome Extension

## Development Setup

```bash
# Install dependencies
npm install

# Development mode (watch)
npm run dev

# Production build
npm run build

# Lint
npm run lint

# Type check
npm run type-check
```

## Load Extension in Chrome

1. Run `npm run build`
2. Open `chrome://extensions`
3. Enable "Developer mode" (top right)
4. Click "Load unpacked"
5. Select the `dist/` folder

After code changes:
1. Rebuild: `npm run build`
2. Click reload icon on extension card in `chrome://extensions`

## Project Structure

```
src/
├── background/         # Service worker (main coordinator)
├── content/           # Content scripts (paste, widget)
├── offscreen/         # Offscreen document (mic access)
├── popup/             # Extension popup UI
├── sidepanel/         # History side panel
├── options/           # Settings page
└── shared/            # Shared utilities (API, auth, crypto, storage)
```

## Code Style

- **No emojis** in UI, code, or comments
- Self-documenting code, minimal comments
- TypeScript strict mode
- Run `npm run lint` before committing

## Pull Requests

1. One feature or fix per PR
2. Test manually in Chrome before submitting
3. Update README.md if adding user-facing features
4. Ensure `npm run build` succeeds without errors

## Debugging

- **Service Worker**: `chrome://extensions` → click "Service worker" link
- **Popup/Options**: Right-click extension icon → "Inspect popup"
- **Content Script**: Open page DevTools → Console (logs prefixed with `[AICHE]`)

## Architecture Notes

- Uses Manifest V3 (required for Chrome extensions)
- Service worker coordinates all operations
- Offscreen document required for `getUserMedia()` (mic access)
- Tokens encrypted with AES-GCM before storage

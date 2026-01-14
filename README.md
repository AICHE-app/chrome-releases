# AICHE Voice - Chrome Extension

Voice-to-text for the web. Press a hotkey, speak naturally, get polished text pasted anywhere.

![AICHE Voice Demo](assets/demo.gif)

## What It Does

Press `Ctrl+Alt+R` (customizable) → speak → AI-polished text appears in any input field on any website.

**Not raw transcription. Polished text with grammar and punctuation handled.**

## Install

### Chrome Web Store (Coming Soon)
1. Visit [Chrome Web Store](https://chrome.google.com/webstore) (link TBD)
2. Click "Add to Chrome"
3. Sign in with AICHE account
4. Start speaking

### Manual Install (Development)
1. Clone repo: `git clone https://github.com/AICHE-app/chrome-extension`
2. Install: `npm install`
3. Build: `npm run build`
4. Open `chrome://extensions`
5. Enable "Developer mode"
6. Click "Load unpacked" → select `dist/` folder
7. Sign in via popup

## Usage

| Action | Shortcut |
|--------|----------|
| Start/Stop Recording | `Ctrl+Alt+R` (Win/Linux)<br>`Cmd+Shift+R` (Mac) |
| Open History | `Ctrl+Alt+H` (Win/Linux)<br>`Cmd+Shift+H` (Mac) |
| Open Popup | Click extension icon |

## Features

### Core
- **Global Hotkey** - Works on any tab, any input field
- **AI Polishing** - Grammar, punctuation, structure handled
- **Auto-Paste** - Text inserted into active field automatically
- **History** - Last 500 transcriptions saved locally
- **Search History** - Find past transcriptions instantly

### Advanced
- **Typing Animation** - Simulate human typing (optional)
- **Custom Hotkeys** - Customize via `chrome://extensions/shortcuts`
- **Side Panel** - Full history browser with search
- **Privacy-First** - Audio deleted after transcription, history local-only

## Keyboard Shortcuts

Default shortcuts can be customized:

1. Go to `chrome://extensions/shortcuts`
2. Find "AICHE Voice"
3. Click pencil icon next to each command
4. Set your preferred shortcut

## History Management

Access via:
- **Popup** - Last 5 transcriptions
- **Side Panel** - Full history with search (`Ctrl+Alt+H`)

History stored locally (not synced). Retention configurable in settings:
- 7 days
- 30 days (default)
- 90 days
- Forever

## Settings

Access via:
- Right-click extension icon → Options
- Or visit `chrome://extensions` → AICHE Voice → Details → Extension options

**Options:**
- Auto-paste toggle
- Typing speed (instant, fast, medium, slow)
- Show notifications
- History retention period
- Language preference

## Privacy

### What We Collect
- **Audio**: Sent to AICHE servers for transcription, deleted within 15 seconds
- **Text**: Returned to your browser, stored locally in extension storage
- **History**: Saved on your device only (not synced or uploaded)

### What We Don't Collect
- Clipboard contents (we only write, never read)
- Browsing history
- Form data from websites
- Analytics or telemetry

[Full Privacy Policy](https://aiche.app/privacy)

## Pricing

One AICHE subscription works everywhere:
- Desktop app (Mac, Windows, Linux)
- Obsidian plugin
- Mobile apps (iOS, Android)
- Chrome extension

**7-day free trial.** Plans start at $4.99/month.

[Start Free Trial](https://aiche.app)

## Troubleshooting

### "Microphone permission denied"
1. Click extension icon
2. Click "Grant Mic Permission"
3. Allow in browser prompt
4. Try recording again

### "Text didn't paste"
Some sites block programmatic pasting. Try:
1. Click extension icon
2. Click recent transcription
3. It will paste again
4. Or manually paste from history panel

### "Hotkey not working"
1. Check `chrome://extensions/shortcuts`
2. Ensure no conflicts with other extensions
3. Try different shortcut combination

### "Extension not responding"
1. Click extension icon → "Disconnect" → "Sign In"
2. If persists, disable and re-enable extension
3. Report issue: https://aiche.app/help

## Support

- [Help Center](https://aiche.app/help)
- [Report Issue](https://github.com/AICHE-app/chrome-releases/issues)
- Email: support@aiche.app

## Development

See [CONTRIBUTING.md](./CONTRIBUTING.md) for development setup.

```bash
npm install          # Install dependencies
npm run dev          # Watch mode
npm run build        # Production build
npm run lint         # Check code quality
npm run type-check   # TypeScript type checking
```

## License

MIT - see [LICENSE](./LICENSE)

## Links

- [Website](https://aiche.app)
- [Desktop App](https://aiche.app/download)
- [Obsidian Plugin](https://aiche.app/works-with/obsidian)
- [Privacy Policy](https://aiche.app/privacy)
- [Terms of Service](https://aiche.app/terms)

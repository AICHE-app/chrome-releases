# Security Policy

## Reporting Vulnerabilities

If you discover a security vulnerability, please report it privately:

**Email:** security@aiche.app

Do not open public issues for security vulnerabilities. We will respond within 48 hours and work with you to understand and address the issue.

## Security Design

### Token Storage
- Access and refresh tokens encrypted with AES-GCM before storage
- Encryption keys derived per-installation
- No plaintext credentials stored

### Audio Processing
- Offline audio queue encrypted locally
- Failed uploads queued securely, auto-retry on reconnect
- Audio data not persisted after successful transcription

### Permissions
- Minimal Chrome permissions requested
- Microphone access only when actively recording
- No background data collection

## Supported Versions

| Version | Supported          |
| ------- | ------------------ |
| Latest  | Yes                |
| Older   | No                 |

We only provide security updates for the latest version. Please keep your extension updated.

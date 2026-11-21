# Homebrew tap for VLTN Tone Studio

[VLTN Tone Studio](https://github.com/grzmol/VLTN-Tone-Studio) is a desktop editor and librarian for Valeton multi-effects pedals.

```bash
brew install --cask grzmol/tap/vltn-tone-studio
```

macOS only (Apple silicon and Intel). The app is not signed or notarized yet, so macOS may refuse to open it; the install prints the one command that fixes it. On Linux use the AppImage or the `.deb` from the [releases page](https://github.com/grzmol/VLTN-Tone-Studio/releases/latest).

## Updating the cask

For a new release, change `version` and both `sha256` values in `Casks/vltn-tone-studio.rb`. The checksums are listed for every release asset on GitHub, or compute them with `shasum -a 256 <file>`.

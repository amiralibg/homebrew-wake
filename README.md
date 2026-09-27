# amiralibg/wake

The Homebrew tap for [Wake](https://github.com/amiralibg/wake), a macOS browser where pages are columns in a trail, not tabs in a bar.

```bash
brew install --cask amiralibg/wake/wake
```

Wake updates itself after that (Wake ▸ Check for Updates…). `brew upgrade --cask --greedy wake` also works.

Wake isn't signed with an Apple Developer ID yet. The cask clears the quarantine flag macOS puts on downloads, so Wake opens without a Gatekeeper prompt.

`Casks/wake.rb` follows new releases on its own: `.github/workflows/update-wake.yml` checks Wake's update feed every three hours, and can be run by hand from the Actions tab.

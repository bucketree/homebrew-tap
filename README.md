# Bucketree Homebrew tap

[Bucketree](https://bucketree.app/) is a native Mac app for Backblaze B2 that runs the whole account, not just the files.

```bash
brew install --cask bucketree/tap/bucketree
```

Installs the same notarized build served at bucketree.app. Updates arrive through the app itself, so Homebrew does not upgrade it (`auto_updates`). A 30-day trial starts on first launch; licences at https://bucketree.app/.

To remove the app and its data:

```bash
brew uninstall --zap --cask bucketree
```

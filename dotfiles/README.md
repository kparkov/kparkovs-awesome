# dotfiles

dotfiles are local machine settings and configuration files. Right now, this is only concerned with bash on MacOS and git bash on Windows.

## The `install` tool

Make sure that you have `git` installed (git bash on Windows) before running this install.

It is designed for idempotency, so you can run it each time you want to update it.

To install in git bash, run

```bash
./install win
```

**This has not yet been tested on Mac, and should be tested thoroughly before using**.

## Resources

- [Awesome dotfiles](https://github.com/webpro/awesome-dotfiles): an awesome list of dotfiles.
- [A brew/cask automated setup of MacOS](https://github.com/driesvints/dotfiles/blob/master/install.sh)
# macOS Completion Checklist

Use this checklist after finishing the macOS path.

## What you should have

By this point, you should have:

- a `~/Projects` folder,
- Homebrew and Git installed,
- Git configured with your name and email,
- a GitHub account,
- Visual Studio Code and its Python extension,
- `uv` installed,
- the `github-practice` repository,
- a Python project published to GitHub.

## Tool checks

Open Terminal or the VS Code terminal and run:

```bash
brew --version
git --version
code --version
uv --version
```

Each command should print version information. The exact versions do not need to match examples from this guide.

## Git identity checks

Run:

```bash
git config --global user.name
git config --global user.email
```

The commands should print the name and email address you chose for commits.

## Project checks

Move into the Python project:

```bash
cd ~/Projects/my-first-python-project
```

Run it:

```bash
uv run my-first-python-project
```

Expected result:

```text
Hello from my first Python project!
```

Check Git:

```bash
git status
```

Expected result:

```text
nothing to commit, working tree clean
```

## GitHub checks

Run:

```bash
git remote -v
```

The fetch and push addresses should point to your `my-first-python-project` repository on GitHub.

Run:

```bash
git push
```

Git may say everything is already up to date. That is a successful result.

Open the repository in your browser and confirm that the latest commit and project files are visible.

## Workflow check

Your setup is ready when you can repeat this loop:

```text
open the project
edit and save a file
run the project
review Git status
commit the change
push it to GitHub
```

## If something fails

Do not reinstall everything. Start with the exact failing command and use:

- [macOS Troubleshooting](18_macos_troubleshooting.md)

## Next step

You have completed the first macOS setup path. Keep the troubleshooting guide nearby:

- [macOS Troubleshooting](18_macos_troubleshooting.md)
